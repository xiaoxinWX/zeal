<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {
    public function login(){
    		$admin = M("admin");
    		$list= $admin->select();
		$this->display("login");
    }
    public function index(){
	    	if(empty($_SESSION["username"])){
	    		header("Location:admin.php/Index/login");
	    	}
    		$this->display("index");
    }
    public function checkUsers(){
		$data = file_get_contents("php://input");
		$sureData=json_decode($data,true);
		$username=$sureData['username'];
		$pwd=$sureData['pwd'];
		//验证用户名和密码是否正确
		$admin=M("admin");
		$where['username']=$username;
		$where['pwd']=md5($pwd);
		$res=$admin->where($where)->find();
		// $sql = $users -> getLastSql();
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
    //编辑页面
    function edit(){
	    	if(empty($_SESSION["username"])){
	    		header("Location:admin.php/Index/login");
	    	}
	    	$pid=I("pid");
	   	session("pid",$pid);
	   	//pid为1
	    	$this->display("edit");
    }
    //获取到列表数据接口
    function getList(){
   	 	$ershou=M("ershou");
	    $where['pid']=session("pid");
	    $list=$ershou->where($where)->select();	    
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
    if(!file_exists("uploads")){
        mkdir("uploads");
    }
    $dirname = date("Y-m-d",time());
    if(!file_exists("uploads/".$dirname)){
        mkdir("uploads/".$dirname);
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
                    $res = move_uploaded_file($tmpPath, "uploads/".$dirname."/".$fileName);
                    if($res){
                        $str .= "uploads/".$dirname."/".$fileName.",";
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
                $res = move_uploaded_file($tmpPath, "uploads/".$dirname."/".$fileName);
                if($res){
                    $str = "uploads/".$dirname."/".$fileName;
                }else{
                    echo "存储失败";
                }
            }
        }
        $goodsData[$name] = $str;
    }
    $ershou = D('ershou');
    $res = $ershou->add($goodsData);
    if ($res) {
        $info["info"] = "数据添加成功";
        $info["status"] = 1;
        $list = $ershou->select();
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
		$ershou=M("ershou");
		$res=$ershou->where("id=".$id)->delete();
		$where['pid'] = $_SESSION['pid'];
		if($res){
			//返还成功的状态和最新的数据
			$info['info']="数据删除成功";
			$info['status']=1;
			$list = $ershou->where($where)->select();
			$info['data']=$list;
		}else{
			//返还失败的状态
			$info['info']="数据删除失败";
			$info['status']=2;
		}
		$this->ajaxReturn($info);
   }
   
   
   
}