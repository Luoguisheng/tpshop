<?php 
namespace Home\Pay;
class CBPay{
	public $v_mid;
	public $v_oid;
	public $v_amount;
	public $v_moneytype='CNY';
	public $v_url;
	public $key;
	public $v_md5info;



	public function __construct($v_oid,$v_amount){
        $this->v_mid=C('V_MID');
        $this->v_url=C('V_URL');
        $this->key=C('PAYKEY');
        $this->v_oid=$v_oid;
        $this->v_amount=$v_amount;

	}

	//生成支付表单
	public function form(){
		$str = '<form method=post action="https://pay3.chinabank.com.cn/PayGate">
				<input type=hidden name=v_mid value="%s">
				<input type=hidden name=v_oid value="%s">
				<input type=hidden name=v_amount value="%s">
				<input type=hidden name=v_moneytype value="%s">
				<input type=hidden name=v_url value="%s">
				<input type=hidden name=v_md5info value="%s">
				<input type="submit" value="支付" />
				</form>';
			    return 	sprintf($str,$this->v_mid,$this->v_oid,$this->v_amount,
					$this->v_moneytype,$this->v_url,'?');
	}


	public function sign(){
        $this->v_amount.$this->v_moneytype.$this->v_oid.$this->v_url.$this->key;
        return strtoupper(md5($str));
	}
}


 ?>