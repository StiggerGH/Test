<?php
$moduledata['title']='Пользователи';
$moduledata['id']='PCMACCSPL';
$moduledata['type']=MOD_TYPE_USERS;
$moduledata['file']='accsimple.php';
$moduledata['classname']='accsimple_module';
$moduledata['options']=MOD_OPTIONS_SYSTEM+MOD_OPTIONS_SERVICE+MOD_OPTIONS_PRE_PARSE+MOD_OPTIONS_POST_PARSE;
$moduledata['required'][EDIT_MODE]=array('PCCACCOUNTS');
$moduledata['required'][WORK_MODE]=array('PCCACCOUNTS');

?>