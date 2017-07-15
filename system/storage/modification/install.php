<?php
	$this->load->model('user/user_group');

	$this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'catalog/ocfilter');
	$this->model_user_user_group->addPermission($this->user->getGroupId(), 'modify', 'catalog/ocfilter');
?>