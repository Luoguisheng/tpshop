<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        //查询cat表 无限极分类
        $cat=D('Home/cat');
        $cats=$cat->getTree();
        $this->assign('cats',$cats);

        //查询精品
        $bests=D('Goods')->where('is_best=1')->order('goods_id desc')->limit(3)->select();
        $this->assign('bests',$bests);
        //查询热卖品
        $hots=D('goods')->where('is_hot=1')->order('goods_id desc')->limit(3)->select();
        $this->assign('hots',$hots);

        //查询最新商品
        $news=D('goods')->where('is_new=1')->order('goods_id desc')->limit(3)->select();
        $this->assign('news',$news);

        //获取最近浏览历史
        $history=array_reverse(session('history'),true);
        $this->assign('history',$history);
        

        //显示最新评论
        $comm=D('Home/Comment')->order('comment_id desc')->limit(3)->select();
        $this->assign('comm',$comm);
        
        $this->display();
    }
    
    public function cat(){
        $cat=D('Home/Cat');
        $cats=$cat->getTree();
        $this->assign('cats',$cats);

        //获取最近浏览历史
        $history=array_reverse(session('history'),true);
        $this->assign('history',$history);


        $cat_id=I('get.cat_id');
        $goods=D('goods');

        //分页效果
        $cnt=$goods->where(array('cat_id'=>$cat_id))->count('*');
        $pager=new \Think\Page($cnt,3);
        $this->assign('cnt',$cnt);
        $this->assign('pages',$pager->show());

        $goods=$goods->where(array('cat_id'=>$cat_id))->order('goods_id desc')
        ->limit($pager->firstRow,$pager->listRows)->select();
        $this->assign('goods',$goods);

    	$this->display();
    }

    public function goods(){

        $goods=D('Home/Goods');
        $row=$goods->find(I('get.goods_id'));
        if (empty($row)) {
            $this->redirect('Home/Index/index');
        }

        $cat=D('Home/Cat');
        //此处商品页面的面包屑不会弄
        $cat_id=$row['cat_id'];
        $cat=$cat->getFamily('cat_id');
        $this->assign('cat',$cat);

        //判断是否有评论提交
        if (IS_POST) {
            $comm=M('comment');
            $comm->goods_id=I('get.goods_id');
            $comm->pubtime=time();
            $comm->email=I('post.email');
            $comm->content=I('post.content');
            $comm->user_id=cookie('user_id')?cookie('user_id'):0;
            $comm->add();

        }

        //用一般方法查询某个商品对应的已有的评论
        /*
        $comm=M('comment');
        $comms=$comm->where('goods_id='.I('get.goods_id'))->select();
        */
       //用关联模型来查询某个商品对应的已有的评论
        $goods=D('Home/Goods');
        $comms=$goods->relationGet('comment');
        $this->assign('comms',$comms);

        
        //把浏览的此商品写入session['history']
        if (session('?history')) {
            $history=session('history');
        }else{
            $history=array();
        }
        $goods_id=I('get.goods_id');
        if (isset($history[$goods_id])) {
            unset($history[$goods_id]);
        }
        $history[$goods_id]['goods_name']=$row['goods_name'];
        $history[$goods_id]['shop_price']=$row['shop_price'];
        $history[$goods_id]['thumb_img']=$row['thumb_img'];
        
        if (count($history)>6) {
            $key=key($history);
            unset($history[$key]);
        }

        session('history',$history);
        
        $this->assign('row',$row);
    	$this->display();
    }

    public function tpl(){
    	$this->display();
    }

    public function test(){
        print_r(D('Ali','Pay'));
        print_r(new \Home\Pay\AliPay());

        // $cart=new \Home\Tool\CartTool();
        $cart= \Home\Tool\CartTool::getIns();

        if (I('get.act')=='buy') {
            $cart->add(3,'nokia',29.9);
            $cart->add(3,'nokia',29.9);
            $cart->add(3,'nokia',29.9);
            $cart->add(5,'sanxing',99.8);
            $cart->add(7,'HTC',99.8);
            $cart->decr(3);
        }
        
        print_r($cart->items());

    }
}