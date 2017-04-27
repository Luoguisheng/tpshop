<?php 
namespace Home\Model;
use \Think\Model;
class UserModel extends Model{
    //自动验证
    protected $_validate = array(
		array('username','/\w{6,16}/','用户名6-16位,数字字母下划线组成','1','regex',1),
		array('email','email','email不合法',1,'',1),
		array('password','6,16','密码在6-16位',1,'length',1),
		array('rpwd' ,'password','2次密码不一致',1,'confirm',1),
	);

    public function reg(){
    	$this->encPass();
    	return $this->add();
    }
    /**
     * 用明文密码+salt生成md5
     */
    public function encPass(){
    	$this->salt();
    	$this->password=md5($this->password.$this->salt);
    }

	/**
	 * 为对象自身的salt属性赋随机值
	 */
	public function salt(){
		if (!isset($this->salt)) {
			$this->salt=$this->randStr();
		}
		return $this->salt;
	}
	/**
	 * 生成随机字符串,当盐使用
	 */
	protected function randStr($length=8){
		$str='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789';
		return substr(str_shuffle($str), 0, $length);
	}

	/**
	 * 检测用户的密码
	 */
	public function checkPass($password){
		$encpass=$this->password;//encpass是md5后的密码
		$this->password=$password;//password是明文密码
        $this->encPass();

        return $this->password===$encpass;
	}

	/**
	 * 设置用户cookie
	 */
	public function auth(){
		cookie('user_id',$this->user_id);
		cookie('username',$this->username);
		cookie('ccode',encCookie($this->user_id,$this->username));
	}
	
}



 ?>