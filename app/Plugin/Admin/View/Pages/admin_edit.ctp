<?php echo $this->Form->create('Page', array('class' => 'form-horizontal', 'role' => 'form')); 
        echo $this->Form->input('id');
        
        //pr($this->validationErrors);
?>
      <div class="form-group">
        <label class="col-sm-2 control-label"><?php echo __d('admin', 'Parent'); ?></label>
        <div class="col-sm-10">
          <?php 
            echo $this->Form->select('parent_id',
              $all_page, array(
              'div' => false,
              'label' => false,
              'class' => 'form-control',
              'empty' => __('Root')
              ));
           ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label"><?php echo __d('admin', 'Title'); ?></label>
        <div class="col-sm-10">
          <?php 
            echo $this->Form->input('title', array(
              'div' => false,
              'label' => false,
              'class' => 'form-control',
              ));
           ?>
        </div>
      </div>
      <div class="form-group <?php echo $this->Form->isFieldError('name') ? 'has-error' : '' ?>">
        <label class="col-sm-2 control-label"><?php echo __d('admin', 'Content'); ?></label>
        <div class="col-sm-10">
          <?php 
            echo $this->Media->tinymce('content', $options = array ( ));
//            echo $this->Form->input('content', array(
//              'div' => false,
//              'label' => false,
//              'class' => 'form-control',
//              ));
           ?>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
           <?php echo $this->Form->end(array('label' => __d('admin', 'Save'), 'class' => 'btn btn-success')); ?>
        </div>
      </div>

        <div class="form-group">
            <?php echo $this->Media->iframe('Page',$page_id); ?>
        </div>