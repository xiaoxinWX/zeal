<?php
class IndexAction extends Action {
	//首页
    public function index(){
  	  	 if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("index");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("index");
        }	    
    }
	//手机维修页面
	public function weixiu(){
	    $this->display(weixiu);
   }
	//享用商城
	public function xiangyong(){
		$this->display(rephone);
    }
	//登陆用户的验证
	public function checkUsers(){
		$data = file_get_contents("php://input");
		$sureData = json_decode($data,true);
		// print_r($sureData);
		$phone = $sureData['phone'];
		$pwd = $sureData['pwd'];
		//验证用户名和密码是否正确
		$users=M("users");
		$where['phone']=$phone;
		$where['pwd']=md5($pwd);
		$res=$users->where($where)->find();
		// $sql = $users -> getLast 
		if($res){
			//查找到$res的数据，可以进行登陆了
			$info['info']="用户名密码正确";
			$info['status']=1;
			session("username",$username);
		}else{
			//没有查到数据的中数据，进行注册（暂时没写）
			$info['info']="用户名或密码错误";
			$info['status']=2;
		}
    	$this->ajaxReturn($info);
    }
}