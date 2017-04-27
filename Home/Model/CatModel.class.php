<?php 
namespace Home\Model;
use Think\Model;
class CatModel extends Model{
    protected $cats=array();
    
    //查询指定栏目下的所有子孙栏目
    public function __construct(){
        parent::__construct();
        $this->cats=$this->select();
    }

    
    public function getTree($parent_id=0 , $lev=1) {
        $tree = array();
        foreach($this->cats as $v) {
            if($v['parent_id'] == $parent_id) {
                $v['lev'] = $lev;
                $tree[] = $v;
                $tree = array_merge($tree , $this->getTree($v['cat_id'] , $lev+1));
                }
            } 
        return $tree;
    }
    

    /**
    * getFamily 获取上级,上上级,... 面包屑导航
    */
    public function getFamily($cat_id) {
        $fm = array();
        while($cat_id > 0) {
        foreach ($this->cats as $c) {
                if($c['cat_id'] == $cat_id) {
                $fm[] = $c;
                $cat_id = $c['parent_id'];
                break;
                }
            }
        } 
        return array_reverse($fm);
    }
}

 ?>