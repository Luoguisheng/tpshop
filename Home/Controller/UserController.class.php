<?php 
namespace Home\Controller;
use Think\Controller;
class UserController extends Controller{ 

//这一部分主要用来做登录注册退出功能   
    protected $model=null;
    public function __construct(){
        parent::__construct();
        $this->model=D('User');
    }

    //注册
    public function zhuce(){
        if (!IS_POST) {
            $this->display('login');
        }else{
            //检测验证码
            /*
            $verify=new \Think\Verify();
            if (!$verify->check($_POST['vcode'])){
                echo '验证码不对';
                exit;
            }
            */
            //用自动验证来检测表单
            if($this->model->create()&&($this->model->reg())) {
                echo '注册成功';
            }else{
                echo $this->model->getError();
            }
        }
    }

    public function login(){
        if (empty($_POST)) {
            $this->display();
        }
        $this->model->where(array('username'=>I('post.username')));
        if (!$this->model->find()) {
            exit('用户名不存在');
        }
        //如果查到用户之后,model内部的变化
        //对比密码
        // echo $this->model->checkPass($_POST['password'])?'登录成功':'密码错误';
        if (!$this->model->checkPass($_POST['password'])) {
            echo '密码不对';
        }
        $this->model->auth();
        $this->redirect('/');
    }

    //退出
    public function logout(){
        cookie('user_id',null);
        cookie('username',null);
        cookie('ccode',null);
        $this->redirect('/');
    }

    //调用TP的验证码类
    public function vcode(){
        $verify=new \Think\Verify();
        $verify->imageW=120;
        $verify->imageH=50;
        $verify->fontSize=15;
        $verify->length=8;
        $verify->entry();
    }


//这一部分主要用来做用户中心功能
    
    //我的收藏
    public function coll(){
        $this->display();
    }
    
    //用户名或密码错误
    public function logerr(){
        $this->display();
    }
    
    //我要留言
    public function message(){
        if (empty($_POST)) {
            $this->display();
        }else{
            $comment=D('Home/Comment');
            $user_id=$_COOKIE['user_id'];
            $goods_id=rand(1, 35);

            $comment->user_id=$user_id;
            $comment->goods_id=$goods_id;
            $comment->email=$_POST['email'];
            $comment->content=$_POST['content'];
            $rs=$comment->add();
            if ($rs) {
                //添加成功后跳转的页面 第二个参数是模板路径地址
        $this->success('添加留言成功',"/NewThink/index.php/Home/User/msgsucc/");
            }else{
                $this->error('添加留言失败');
            }
        }
    }
    
    //我的订单
    public function orderlist(){
        //从cookie中获取到user_id
        $username=$_COOKIE['username'];
        $user_id=$_COOKIE['user_id'];
        //根据user_id去查看ordinfo中相应的信息
        $ordinfo=D('Home/ordinfo');
        $ordinfo=$ordinfo->where(array('user_id'=>$user_id))->select();
        $this->assign('ordinfo',$ordinfo);
        $this->display();
    }
    
    //修改密码
    public function repwd(){
        $this->display();
    }
    

}



 ?>