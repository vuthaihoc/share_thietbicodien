<?php echo $this->Form->create('Category', array('class' => 'form-horizontal', 'role' => 'form')); 
        echo $this->Form->input('id');
        
        //pr($this->validationErrors);
?>
      <div class="form-group">
        <label class="col-sm-2 control-label"><?php echo __d('admin', 'Parent'); ?></label>
        <div class="col-sm-10">
          <?php 
            echo $this->Form->select('parent_id',
              $tree_categories, array(
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
            echo $this->Form->input('name', array(
              'div' => false,
              'label' => false,
              'class' => 'form-control',
              ));
           ?>
        </div>
      </div>

    <div class="form-group">
        <?php echo $this->Media->iframe('Page',$category_id); ?>
    </div>