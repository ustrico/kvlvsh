<?php

class Route_Model  extends CI_Model  {
    
	function __construct()
    {
        parent::__construct();
    }

    public function getRoute( $Link = '' )
    {
      $ret = $this->db->where('Link', $Link)->get('Route')->row();
      return ($ret) ? $ret->Route : false;
    }
		
}