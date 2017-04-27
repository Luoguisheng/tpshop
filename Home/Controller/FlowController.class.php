<?php 
namespace Home\Controller;
use Think\Controller;
class FlowController extends Controller{
   
   //购买商品
   public function buy(){
   	$goods=D('Goods');
   	if (!$goods->find(I('get.goods_id'))) {
   		$this->redirect('/');
   		exit;
   	}
   	//加入购物车
   	$cart= \Home\Tool\CartTool::getIns();
    $cart->add($goods->goods_id,$goods->goods_name,$goods->shop_price);
    // print_r($cart->items());
    // exit;
    $this->redirect('Home/Flow/checkout');
   }
   
   //显示购物车中的信息
   public function checkout(){
	$cart= \Home\Tool\CartTool::getIns();
	$this->assign('items',$cart->items());
	$this->assign('money',$cart->calcMoney());
	$this->display();
   }





	public function done(){
		$oi=M('ordinfo');
		$og=M('ordgoods');
		$cart= \Home\Tool\CartTool::getIns();
		//把post数据写入ordinfo表
		$oi->ord_sn=$ord_sn=date('YmdHis').mt_rand(10000,99999);
		$oi->user_id=cookie('user_id')?cookie('user_id'):0;
		$oi->xm=I('post.xm');
		$oi->mobile=I('post.mobile');
		$oi->address=I('post.address');
		$oi->note=I('post.note');
		$oi->money=$money=$cart->calcMoney();
		$oi->ordtime=time();
        
   
		// if (!$oi->add()) {
		// 	echo '订单信息添加失败';
		// 	exit;
		// }
        
        //将信息添加到ordinfo表中,同时根据TP规则,会返回一个主键
        $ordinfo_id=$oi->add();
		$res=true;
		//把购物车中的商品数据写入ordgoods表中
		foreach ($cart->items() as $k=>$v) {
			$row=array();
			//将ordinfo表的主键ordinfo_id赋值给ordgoods表中的ordinfo_id
			$row['ordinfo_id']=$ordinfo_id;
			$row['goods_id']=$k;
			$row['goods_name']=$v['goods_name'];
			$row['shop_price']=$v['shop_price'];
			$row['goods_num']=$v['num'];
             
            $res=$res && $og->add($row);
		}

		if (!$res) {
			$oi->delete($ordinfo_id);
			$og->where('ordinfo_id='.$ordinfo_id)->delete();
			echo '订单商品入库失败';
		}else{

		$this->assign('ord_sn',$oi->ord_sn);
		$this->assign('money',$cart->calcMoney());
			//清空购物车
            $cart->clear();
		}
        
        
        $this->assign('ord_sn',$ord_sn);
        $this->assign('money',$money);
        
        $cbpay=new \Home\Pay\CBPay($ord_sn,$money);
        $this->assign('form',$cbpay->form());

		$this->display();
	}

	public function cart(){
		$this->display();
	}
}



 ?>