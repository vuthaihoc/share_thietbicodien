<?php echo $this->Form->create('Page', array('class' => 'form-horizontal', 'role' => 'form')); ?>
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
            echo $this->Form->input('content', array(
              'div' => false,
              'label' => false,
              'class' => 'form-control',
              ));
           ?>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
           <?php echo $this->Form->end(array('label' => __d('admin', 'Save'), 'class' => 'btn btn-success')); ?>
        </div>
      </div>