<?php

class Chunk_Model  extends CI_Model  {
    
	function __construct()
    {
        parent::__construct();
    }

    public function getByID( $ID = '' )
    {
      return $this->db->where('ID', $ID)->get('Chunk')->row();
    }
		
}