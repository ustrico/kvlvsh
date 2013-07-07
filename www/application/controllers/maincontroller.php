<?php
class Maincontroller extends CI_Controller {
	
	public function __construct()
  {
        parent::__construct();
  }
  
  function _example_output($output = null)
	{
		$this->load->view('example.php',$output);	
	}
  
	function index()
	{
    $uri = $this->uri->uri_string();
    $uri = preg_replace("/\?.*/i",'', $_SERVER['REQUEST_URI']);
 
if (strlen($uri)>1) {// если не главная страница...
  if (rtrim($uri,'/')."/"!=$uri) {
    header("HTTP/1.1 301 Moved Permanently");
    header('Location: http://'.$_SERVER['SERVER_NAME'].str_replace($uri, $uri.'/', $_SERVER['REQUEST_URI']));
    exit();    
  }
}
    
		$this->config->load('settings');
    $this->load->helper('html');
		$this->load->library('parser');
		$this->load->model('chunk_model');
		$this->load->model('page_model');
		$this->load->model('menu_model');		
		$this->load->model('route_model');
		
		$page = $this->config->item('mainPageID');
		$route = $this->route_model->getRoute($this->uri->segment(1));
    if ($route){
      $route = explode('/', $route);
      if ($route[1] == 'mainmenu') return $this->mainmenu();
      if ($route[1] == 'page') $page = $route[2];
    }
    
		
		
		$headData = array(
		  'meta' => $this->chunk_model->getByID($this->config->item('metaChunkID'))->Body,
		  'title' => $this->config->item('title'),
      'styles' => array(
        array('file' => link_tag($this->config->item('styleAll'))),
        array('file' => link_tag($this->config->item('style1000'))),
        array('file' => link_tag($this->config->item('style720'))),
      ),
      'js' => array(
        array('file' => javascript('js/jquery-1.10.0.min.js')),
        array('file' => javascript('js/common.js')),
        array('file' => javascript('js/jquery.touchslider.js'))
      )
    );
    $this->parser->parse('head', $headData);
    $this->parser->parse('hat', array());
    
    $mainDataA = $this->page_model->getByID($page);
    
    $mainData = array(
		  'mainmenu' => $this->load->view('mainmenu', array('menu' => $this->menu_model->getMainMenu()), true),
		  'slider' => $this->load->view('slider', array(), true),
		  'sideleft' => $this->load->view('sideleft', array(), true),
      'h1' => heading($mainDataA->Name, 1),
		  'body' => $mainDataA->Body
    );
		$this->parser->parse('mainview', $mainData);
		
		$this->parser->parse('footer', array(
			'menu' => $this->menu_model->getFooterMenu(),
			'copyright' => $this->chunk_model->getByID($this->config->item('copyrightChunkID'))->Body,
			'addressFooter' => $this->chunk_model->getByID($this->config->item('addressFooterChunkID'))->Body
		));
	}
	
	function mainmenu()
	{
	  $this->config->load('settings');
    $this->load->helper('html');
		$this->load->library('parser');
		$this->load->model('chunk_model');
		$this->load->model('page_model');
		$this->load->model('menu_model');
		
		$mainmenu = array('menu' => $this->menu_model->getMainMenu());
    $this->parser->parse('mainmenu', $mainmenu);
	}
	
	
	function updatechunk()
	{
	/*
    $data = array(
               'body' => $_POST['chunk-body']
            );

$this->db->where('name', $_POST['chunk-name']);
$this->db->update('chunks', $data); 
*/

$this->load->library('grocery_CRUD');
$crud = new grocery_CRUD();
$crud->set_table('chunks');
$output = $crud->render();
$this->_example_output($output);
	}
}
?>