<?php
class XinAction extends Action {
	//首页
    public function index(){
    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("xin");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("xin");
        }	
    }
       public function goodsDetail_1(){
    	if(!empty($_SESSION['phone'])) {
    			//登录判断session用的
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            //实例化ershou
            $quianxin = M("quianxin");
			$text = $_GET['text'];
//			print_r($text);die;
			$version["version"]=$text;
			//$Ersion获取版本号
			$Ersion = $quianxin->where($version)->find();
//			print_r($Ersion);die;
            $this->assign('Ersion',$Ersion);
//			$this->assign('list',$list);// 赋值数据集
			
            $this->display("xin_xiangxi");
       }else{
       	      	
            $this->assign("judge",'true');
            $this->assign("judge1",'false'); 
            //实例化ershou
            $quianxin = M("quianxin");
//			print_r($quianxin);die;
			$text = $_GET['text'];
//			print_r($text);die;
//			ECHO $text;
//			print_r("asdasdasdasd".$text);die;
			$version["version"]=$text;
//			print_r($version);die;
			//$Ersion获取版本号
			$Ersion = $quianxin->where($version)->find();			
//			print_r($Ersion);die;
//			print_r($Ersion);
            $this->assign('Ersion',$Ersion);      
            $this->display("xin_xiangxi");
        }
    		
    }
  public function dianDetail(){
    	if(!empty($_SESSION['phone'])) {
    		//登录判断session用的
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            //实例化ershou
            $quianxin = M("quianxin");		
			$Html=$_POST["Html"];
			if($Html=="黑色"||$Html=="亮黑色"||$Html=="玫瑰金色"||$Html=="银色"){
				$where["color"]=$Html;
			}else if($Html=="128GB"||$Html=="32GB"||$Html=="256GB"){
				$where["volumn"]=$Html;
			}else if($Html=="全网通"||$Html=="其他全网通"||$Html=="国行全网通"){
				$where["network"]=$Html;
			}else if($Html=="全新"||$Html=="全新"){
				$where["quality"]=$Html;
			}else{
				//全部颜色或者其他
				$exttt = $quianxin->select();
				$this->ajaxReturn($exttt);				
			}						
			$Color = $quianxin->where($where)->select();
			if($Color){
				$info['status']=1;
				$info['info']="数据查询成功";
				$info['data'] = $Color;
			}else{
				$info['status']=2;
				$info['info']="数据查询失败";
			};		
			$this->ajaxReturn($info);
		
       }else{       	
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
             //实例化ershou
            $quianxin = M("quianxin");		
			$Html=$_POST["Html"];
			if($Html=="黑色"||$Html=="亮黑色"||$Html=="玫瑰金色"||$Html=="银色"){
				$where["color"]=$Html;
			}else if($Html=="128GB"||$Html=="32GB"||$Html=="256GB"){
				$where["volumn"]=$Html;
			}else if($Html=="国行全网通"||$Html=="其他全网通"){
				$where["network"]=$Html;
			}else if($Html=="A级·99新"||$Html=="A级·95新"){
				$where["quality"]=$Html;
			}else{
				$list = $quianxin->select();
				$this->ajaxReturn($list);
			}						
			$Color = $quianxin->where($where)->select();
			if($Color){
				$info['status']=1;
				$info['info']="数据查询成功";
				$info['data'] = $Color;
			}else{
				$info['status']=2;
				$info['info']="数据查询失败";
			};	           	
			$this->ajaxReturn($info);       
        }
    		
    }
    public function shopping(){
   			$id=$_POST['id'];
   			$where["id"]=$id;
            $quianxin = M("quianxin");											
			$cha = $quianxin->where($where)->select();
			if($cha){
				$info['status']=1;
				$info['info']="数据查询成功";
				$info['data'] = $cha;
			}else{
				$info['status']=2;
				$info['info']="数据查询失败";
			};		
			$this->ajaxReturn($info);
    }
	
}