<?php 
namespace Home\Model;
use Think\Model;
class GoodsModel extends Model\RelationModel{
	
	//自动验证
	//声明$_validate二维数组 每个数组是一个字段的验证规则
	protected $_validate=array(
        array('goods_name','6,16','商品名称在6-16字符之间',1,'length',3),
		array('goods_sn' , '' , '商品货号已经存在' , 1 , 'unique' , 3),
		array('cat_id','ckc','请先分类',1,'callback',3),
		array('is_best',array(0,1),'精品只能是0或1',0,'in',3),
		);

	protected function ckc(){
		$cat=D('Home/Cat');
		return $cat->find($_POST['cat_id'])?true:false;
	}

	//自动填充
	protected $_auto=array(
         array('add_time','time',1,'function'),
         array('last_upate','time',2,'function'),
		);
	
	//自动过滤
	protected $insertFields = 'goods_id,cat_id,goods_name,goods_sn,goods_number,goods_weight,shop_price,goods_desc,
	goods_brief,ori_img,goods_img,thumb_img,is_best,is_new,is_hot,is_sale,last_update';
   
   //关联模型 一个商品对应多条评论
  
   protected $_link=array(
      'comment'=>self::HAS_MANY,
   	);

}



 ?>