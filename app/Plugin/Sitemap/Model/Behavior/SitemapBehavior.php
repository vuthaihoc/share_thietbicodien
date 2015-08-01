<?php
class SitemapBehavior extends ModelBehavior {

	/**
	 * _CacheKey - Cache Key
	 *
	 * @var string
	 */
	protected $_CacheKey = 'Sitemap.ModelData.';

	/**
	 * setup
	 *
	 * @param  Model  $Model    [description]
	 * @param  array  $settings [description]
	 * @return [type]           [description]
	 */
	public function setup(Model $Model, $settings = array()) {
		if (!isset($this->settings[$Model->alias])) {
			$this->settings[$Model->alias] = array(
				'primaryKey' => 'id',
				'loc' => 'buildUrl',
				'lastmod' => 'modified',
				'changefreq' => 'daily',
				'priority' => '0.9',
				'conditions' => array(),
			);
		}
		$this->settings[$Model->alias] = array_merge($this->settings[$Model->alias], $settings);
	}

	/**
	 * buildUrl - basic build URL function for the model behavior, basic URL using action => 'view'
	 *
	 * @return [type] [description]
	 */
	public function buildUrl(Model $Model, $primaryKey) {
		return Router::url(array('plugin' => NULL, 'controller' => Inflector::tableize($Model->name), 'action' => 'view', $primaryKey), TRUE);
	}

	/**
	 * generateSitemapData - generate the sitemap data, attempting to hit the cache for this data
	 *
	 * @param  Model  $Model [description]
	 * @return [type]        [description]
	 */
	public function generateSitemapData(Model $Model) {

		//Attempt to hit the Model Cache for data
		$sitemapData = Cache::read($this->_CacheKey . $Model->name);

		if ($sitemapData !== false) {
			return $sitemapData;
		}

		//Load the Model Data
		$modelData = $Model->find('all', array(
			'conditions' => $this->settings[$Model->alias]['conditions'],
			'recursive' => -1,
		));

		//Build the sitemap elements
		$sitemapData = $this->_buildSitemapElements($Model, $modelData);

		//Write to the Cache
		Cache::write($this->_CacheKey . $Model->name, $sitemapData);

		return $sitemapData;
	}

	/**
	 * _buildSitemapElements - build the sitemap elements
	 *
	 * @param  Model  $Model     [description]
	 * @param  [type] $modelData [description]
	 * @return [type]            [description]
	 */
	protected function _buildSitemapElements(Model $Model, $modelData) {
		$sitemapData = array();

		//Loop through the Model data and create the array of elements for the sitemap
		foreach($modelData as $key => $data) {
			$sitemapData[$key] = array();

			$sitemapData[$key]['loc'] = call_user_func(array($Model, $this->settings[$Model->alias]['loc']), $data[$Model->alias][$this->settings[$Model->alias]['primaryKey']]);

			if($this->settings[$Model->alias]['lastmod'] !== FALSE) {
				$sitemapData[$key]['lastmod'] = $data[$Model->alias][$this->settings[$Model->alias]['lastmod']];
			}

			if($this->settings[$Model->alias]['changefreq'] !== FALSE) {
				$sitemapData[$key]['changefreq'] = $this->settings[$Model->alias]['changefreq'];
			}

			if($this->settings[$Model->alias]['priority'] !== FALSE) {
				$sitemapData[$key]['priority'] = $this->settings[$Model->alias]['priority'];
			}
		}

		return $sitemapData;

	}
}
?>