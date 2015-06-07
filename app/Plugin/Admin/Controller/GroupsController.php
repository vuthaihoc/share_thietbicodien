<?php
/**
 * Groups Controller
 *
 * @author Luis Fred G S <luis.fred.gs@gmail.com>
 * @category Controller
 * @package Plugin.Admin
 */
App::uses('AdminAppController', 'Admin.Controller');

class GroupsController extends AdminAppController{
	
	/**
	 * Controller callback
	 * 
	 * @return void
	 */
	public function beforeFilter()
	{
		parent::beforeFilter();
		$this->set('title_for_layout', __d('admin', 'Nhóm'));
	}
	
	/**
	 * admin_index
	 * 
	 * @return void
	 */
	public function admin_index()
	{
		$this->paginate['Group']['order'] = 'Group.id Desc';
		$this->set('groups', $this->paginate('Group'));
	}
	
	/**
	 * admin_Add
	 * 
	 * @return void
	 */
	public function admin_add()
	{
		if ( !empty( $this->request->data ) ) {
			$this->Group->create();
			if ( $this->Group->save( $this->request->data ) ) {
				$this->Session->setFlash(__d('admin', 'Đã tạo nhóm.'), 'flash_success');
				$this->redirect(array('action' => 'index'));
			}
		}
	}
	
	/**
	 * admin_edit
	 * 
	 * @param $id Group id
	 * @return void
	 */
	public function admin_edit( $id = null )
	{
		if( !$id )
		{
			$this->Session->setFlash(__d('admin', "ID không hợp lệ"), 'flash_error');
			$this->redirect(array("action" => 'index'));			
		}
		if( !empty( $this->request->data ) )
		{
			if( $this->Group->save( $this->request->data ) )
			{
				$this->Session->setFlash(__d('admin', "Thông tin nhóm đã được lưu."), 'flash_success');
				$this->redirect(array("action" => 'index'));		
			}			
		}
		$this->request->data = $this->Group->read(null, $id);
	}
	
	/**
	 * admin_delete
	 * 
	 * @param  $id Group id
	 * 
	 * @return void
	 */
	public function admin_delete( $id = null )
	{
		if( !$id )
		{
			$this->Session->setFlash(__d('admin', 'ID không hợp lệ.'), 'flash_error');
			$this->redirect(array('action' => 'index'));
		}
		if( $this->Group->delete( $id ) )
		{
			$this->Session->setFlash(__d('admin', 'Người dùng đã xóa.'), 'flash_success');
			$this->redirect(array('action' => 'index'));
		}  else {
                    $this->Session->setFlash(__d('admin', 'Không thể xóa nhóm mặc định hoặc còn người dùng thuộc nhóm.'), 'flash_error');
			$this->redirect(array('action' => 'index'));
                }
	}
}