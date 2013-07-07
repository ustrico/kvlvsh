<?php

class Menu_Model  extends CI_Model  {
    
	function __construct()
    {
        parent::__construct();
    }

    public function getMainMenu()
    {
      return $this->db
        ->where(array(
          'Type'=>'Main', 
          'Publish'=>1))
        ->order_by('Priority', 'asc')
        ->get('Menu')
        ->result_array();
    }
    public function getFooterMenu()
    {
      return $this->db
        ->where(array(
          'Type'=>'Footer', 
          'Publish'=>1))
        ->order_by('Group asc, Priority asc')
        ->get('Menu')
        ->result_array();
    }
		
}