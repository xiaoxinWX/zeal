<?php
class RegisterAction extends Action {
	//首页
    public function index(){
        $this->display(index);
    }
	//注册
    public function checkRegister() {
        $str = file_get_contents("php://input");
        $regData = json_decode($str, true);
        $users = M('users');
        $res = $users -> where("phone='".$regData['phone']."'") -> find();
        if ($res) {
            //已经注册过
            $info['info'] = '该手机号已经注册过';
            $info['status'] = '2';
        } else {
            //注册
            // $data["addtime"] = date("Y-m-h",time());
            $data["phone"] = $regData["phone"];
			$data["pwd"] = md5((int)$regData["pwd1"]);
            // print_r($data);die;
            $res = $users -> data($data) -> add();
            if ($res) {
                $info['info'] = '用户注册成功';
                $info['status'] = 1;   
            } else {
                $info['info'] = '注册失败';
                $info['status'] = 3;
            }
        }
        $this->ajaxReturn($info);
    }
	
}