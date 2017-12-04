<?php
// 本类由系统自动生成，仅供测试用途
class PeijianAction extends Action {
	//配件的主入口   
    public function login(){	    
    		$this->display("Peilogin");
    }
    public function peijian(){	    
    		$this->display("Peijian");
    }
    public function checkUsers(){
		$data = file_get_contents("php://input");
		$sureData=json_decode($data,true);
		$username=$sureData['username'];
		$pwd=$sureData['pwd'];
		//验证用户名和密码是否正确
		$admin=M("admin2");
		$where['username']=$username;
		$where['pwd']=md5($pwd);
		$res=$admin->where($where)->find();
		if($res){
			$info['info']="用户名密码正确";
			$info['status']=1;
			session("username",$username);
		}else{
			$info['info']="用户名或密码错误";
			$info['status']=2;
		}
    		$this->ajaxReturn($info);
   }
   
    //获取到列表数据接口
    function getList(){
//  		print_r("我来到list");die;
    		$peijian=M("peijian");
//	    $where['pid']=session("pid");
	    $list=$peijian->select();	    
    		$this->ajaxReturn($list);
    }
	
	 public function randstr($num){
        $str ="qwertyuioplkjhgfdsazxcvbnmZXCVBNMLKJHGFDSAQWERTYUIOP0123456789";
        $newstr = "";
        for($i = 0;$i < $num;$i ++){
            //mt_rand(min,max)返回随机整数。
            $randNum = mt_rand(0, strlen($str)-1);
            $newstr .=$str[$randNum];
        }
        return $newstr;
    }
    //添加数据的接口
    function addData(){
    		//获取用户提交的信息
    $goodsData = $_POST;
    if(!file_exists("uploadsPeijian")){
    	//新建的一个插入到配件的目录
        mkdir("uploadsPeijian");
    }
    $dirname = date("Y-m-d",time());
    if(!file_exists("uploadsPeijian/".$dirname)){
        mkdir("uploadsPeijian/".$dirname);
    }
    foreach ($_FILES as $key => $value) {
        $str = "";
        $name = $key;
        if (is_array($value["name"])) {
            foreach($value["name"] as $k => $v) {
                $sourseName = $v;
                $type = strrchr($sourseName,".");
                $fileName = $this->randstr(10).$type;
                $tmpPath = $value["tmp_name"][$k];
                if (is_uploaded_file($tmpPath)) {
                    $res = move_uploaded_file($tmpPath, "uploadsPeijian/".$dirname."/".$fileName);
                    if($res){
                        $str .= "uploadsPeijian/".$dirname."/".$fileName.",";
                    }else{
                        echo "存储失败";
                    }	
                }
            }
            $str = substr($str,0,strlen($str)-1);
        } else {
            $sourseName = $value["name"];
            $type = strrchr($sourseName,".");
            $fileName = $this->randstr(10).$type;
            $tmpPath = $value["tmp_name"];
            if (is_uploaded_file($tmpPath)) {
                $res = move_uploaded_file($tmpPath, "uploadsPeijian/".$dirname."/".$fileName);
                if($res){
                    $str = "uploadsPeijian/".$dirname."/".$fileName;
                }else{
                    echo "存储失败";
                }
            }
        }
        $goodsData[$name] = $str;
    }
    $peijian = M('peijian');
    $res = $peijian->add($goodsData);
    if ($res) {
        $info["info"] = "数据添加成功";
        $info["status"] = 1;
        $list = $peijian->select();
        $info["data"] = $list;
    } else {
        $info["info"] = "数据添加失败";
        $info["status"] = 2;
    }
    $this->ajaxReturn($info);
    }
     function del(){
    		$str = file_get_contents("php://input");
    		$data = json_decode($str,true);
    		$id=$data['id'];
		$peijian=M("peijian");
		$res=$peijian->where("id=".$id)->delete();
		if($res){
			//返还成功的状态和最新的数据
			$info['info']="数据删除成功";
			$info['status']=1;
			$list = $peijian->where($where)->select();
			$info['data']=$list;
		}else{
			//返还失败的状态
			$info['info']="数据删除失败";
			$info['status']=2;
		}
		$this->ajaxReturn($info);
   }
   
   
   
}