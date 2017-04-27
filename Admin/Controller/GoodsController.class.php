<?php 
namespace Admin\Controller;
use Think\Controller;
class GoodsController extends Controller{
	protected $model=null;
	public function __construct(){
		parent::__construct();
		$this->model=D('Home/Goods');
	}

	public function goodsadd(){
		if (empty($_POST)) {
			$cat=D('Home/Cat');
			$cats=$cat->getTree();
			$this->assign('cats',$cats);
			$this->display();
		}else{
            // echo $this->model->add($_POST) ?'ok':'false';
            
            //创建数据对象 create方法会自动把$_POST存于data属性上
            if (!$this->model->create()) {
                echo $this->model->getError();	
            }else{
            	$upload=new \Think\Upload();
            	$upload->rootPath=APP_PATH.'Public/upload/';
            	$upload->savePath='images/';
            	//上传文件
            	$res=$upload->upload();
            	if ($res) {
            		$this->model->ori_img=$res['goods_img']['savepath'].$res['goods_img']['savename'];
            		$this->model->goods_img=$this->model->ori_img.'x230.jpg';
            		$this->model->thumb_img=$this->model->ori_img.'x100.jpg';

            		$img=new \Think\Image();
            		$img->open($upload->rootPath.$this->model->ori_img);
                    //生成一个缩放后填充大小230*230的缩略图并保存
                            $img->thumb(230,230,\Think\Image::IMAGE_THUMB_FILLED)->
                            save($upload->rootPath.$this->model->goods_img);
            		//生成一个缩放后填充大小100*100的缩略图并保存
            		        $img->thumb(100,100,\Think\Image::IMAGE_THUMB_FILLED)->
                            save($upload->rootPath.$this->model->thumb_img);

            	}
            
                if ($this->model->add()) {
                	$this->redirect('Admin/Goods/goodslist');
                }else{
                	echo '添加失败';
                }
            }
            
            
		}

	}

	public function goodslist(){
		$cat=D('Home/Cat');
		$cat=$cat->getTree();
		$this->assign('cats',$cat);


        $cnt=$this->model->count('*');
        $pager=new \Think\Page($cnt,10);
        $this->assign('pages',$pager->show());

		$goods=$this->model->limit($pager->firstRow,$pager->listRows)->select();

		$this->assign('goods',$goods);

		$this->display();
	}

	public function goodsdel(){
		$rs=$this->model->delete($_GET['goods_id']);
		if ($rs) {
			$this->redirect('Admin/Goods/goodslist');
		}else{
			echo '删除失败';
		}
	}

	public function goodsedit(){
		if (!IS_POST) {
			$row=$this->model->find(I('get.goods_id'));
			// print_r($row);
			// exit;
			$this->assign('row',$row);
            
            $cat=D('Home/Cat');
			$cats=$cat->getTree();
			$this->assign('cats',$cats);

			$this->display();
		}else{
             $this->model->where('goods_id='.I('get.goods_id'))->save($_POST);
             $this->redirect('Admin/Goods/goodslist');
		}
	}

}



 ?>