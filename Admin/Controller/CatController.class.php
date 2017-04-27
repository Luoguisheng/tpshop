<?php 
namespace Admin\Controller;
use Think\Controller;
class CatController extends Controller{
	public function cateadd(){
		$cat=D('Home/Cat');
		if (empty($_POST)) {
			$cat=$cat->getTree();
			$this->assign('cats',$cat);
			$this->display();
		}else{
            if ($cat->add($_POST)) {
            	// echo 'ok';
            	$this->redirect('Admin/Cat/catelist');
            }else{
            	echo 'false';
            }
		}
	}

	public function catelist(){
		$cat=D('Home/Cat');
		$cats=$cat->getTree();
		$this->assign('cats',$cats);
		$this->display();
	}

	public function catedel(){
		$cat=D('Home/Cat');
		$cat->delete(I('get.cat_id'));
		$this->redirect('Admin/Cat/catelist');
	}

	public function cateedit(){
		$cat=D('Home/Cat');
		if (!IS_POST) {
			$row=$cat->find(I('get.cat_id'));
			$this->assign('row',$row);

			$cats=$cat->getTree();
			$this->assign('cats',$cats);

			$this->display();
		}else{
             $cat=$cat->where('cat_id='.I('get.cat_id'))->save($_POST);
             $this->redirect('Admin/Cat/catelist');
		}
	}


}



 ?>