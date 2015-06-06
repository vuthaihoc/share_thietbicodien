<?php

echo $this->Session->flash();

echo $this->Html->link(__("Về trang danh sách"), array("admin" => true, "plugin" => "admin", "action" => "index"));

?>