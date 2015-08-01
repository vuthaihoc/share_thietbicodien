<?php
/**
 * Displays the sitemap file
 *
 * @package Sitemap.Controller
 */
App::uses('FrontController', 'Controller');
App::uses('PagesIterator', 'Sitemap.Lib/Iterators');

/**
 * SitemapsController
 */
class SitemapsController extends FrontController {

	/**
	 * helpers - array of helpers
	 *
	 * @var array
	 */
	public $helpers = array(
		'Time',
		'Html',
		'Cache',
	);

	/**
	 * components - array of components
	 *
	 * @var array
	 */
	public $components = array(
		'RequestHandler',
		'Auth',
	);

	/**
	 * cacheAction - view cache timing
	 *
	 * @var array
	 */
	public $cacheAction = array(
		'display' => 43200,
	);

	/**
	 * beforeFilter - beforeFilter callback
	 *
	 * @return void
	 */
	public function beforeFilter() {
		parent::beforeFilter();
		$this->Auth->allow(array('display'));
	}

	/**
	 * beforeRender - beforeRender callback
	 *
	 * @return void
	 */
	public function beforeRender() {
		parent::beforeRender();
	}

	/**
	 * display - display the sitemap
	 *
	 * @return void
	 */
	public function display() {
		$sitemapData = array();

		//Generate Sitemap of Static Pages
		$sitemapData['Static'] = $this->_generateListOfStaticPages();

		//Generate a list of Models in the App
		$listOfModels = $this->_generateListOfModels();

		//foreach model
		foreach ($listOfModels as $model) {
			App::uses($model, 'Model');

			// We need to load the class
			$newModel = new $model;

			if (!empty($newModel->actsAs) && array_key_exists('Sitemap.Sitemap', $newModel->actsAs)) {
				$response = $newModel->generateSitemapData();
				$sitemapData[$newModel->name] = $response;
			} else {
			}
			unset($newModel);
		}

		$this->set('sitemapData', $sitemapData);
	}

	/**
	 * _generateListOfModels - generate the list of models
	 *
	 * @return void
	 */
	protected function _generateListOfModels() {
		//Generate list of Models
		$appModelClasses = App::objects('Model');

		$listOfModels = array();

		//Foreach Model
		foreach ($appModelClasses as $modelClass) {
			if ($modelClass != 'AppModel') {
				// Load the Model
				App::import('Model', str_replace('Model', '', $modelClass));
				$listOfModels[] = $modelClass;
			}
		}

		return $listOfModels;
	}

	/**
	 * _generateListOfStaticPages - generate the list of static pages and the sitemap data
	 *
	 * @return void
	 */
	protected function _generateListOfStaticPages() {
		$pagesSitemap = array();

		$pages = new PagesIterator(APP . 'View' . DS . 'Home' . DS, array(), $this->request->webroot);
		$pagesArray = iterator_to_array($pages);

		foreach ($pagesArray as $key => $page) {
			$pagesSitemap[$key] = array();

			$pagesSitemap[$key]['loc'] = $page['url'];
			$pagesSitemap[$key]['lastmod'] = $page['modified'];
			$pagesSitemap[$key]['changefreq'] = 'daily';
			$pagesSitemap[$key]['priority'] = '1.0';
		}

		return $pagesSitemap;
	}

}
