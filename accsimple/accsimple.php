<?php

class accsimple_module extends useraccounts_module
   {
      function on_InstallComplete()
         {
            parent::on_InstallComplete();
            
            $admid=$this->create_group('Администраторы','admins');
            $editid=$this->create_group('Редакторы','editors');
            
            $id=$this->create_user('admin',"");
            $this->set_user_groups($id, array($editid, $admid));
            $this->set_user_active($id, true);
            
            $id=$this->create_user('editor',"");
            $this->set_user_groups($id, array($editid));
            $this->set_user_active($id, true);
            
         }
         
      function view_main()   
         {
            return '!!';
         
         }
   }

?>