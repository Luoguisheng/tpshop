<?php 
namespace Admin\Controller;
use Think\Controller;
class TestController extends Controller{
	public function test(){
		$cat=D('Home/Cat');
		$cat=$cat->getTree();
		print_r($cat);
	}
}



 ?>