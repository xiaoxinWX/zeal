<?php
// 本类由系统自动生成，仅供测试用途
class RephoneAction extends Action {
	//二手诚品
    public function index(){
    		if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("rephone");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("rephone");
        }	
		
    }
    public function goodsDetail(){
    	if(!empty($_SESSION['phone'])) {
    			//登录判断session用的
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            //实例化ershou
            $ershou = M("ershou");
			$version["version"]="iPhone 7 Plus";
			//$Ersion获取版本号
			$Ersion = $ershou->where($version)->find();
            $this->assign('Ersion',$Ersion);
//			$this->assign('list',$list);// 赋值数据集
            $this->display("goods_detials");
       }else{       	
            $this->assign("judge",'true');
            $this->assign("judge1",'false'); 
            //实例化ershou
            $ershou = M("ershou");
			$version["version"]="iPhone 7 Plus";
			//$Ersion获取版本号
			$Ersion = $ershou->where($version)->find();
            $this->assign('Ersion',$Ersion);      
            $this->display("goods_detials");
        }
    		
    }
  public function goodsDetail_1(){
    	if(!empty($_SESSION['phone'])) {
    			//登录判断session用的
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            //实例化ershou
            $ershou = M("ershou");
			$text = $_GET['text'];
			
			$version["version"]=$text;
			//$Ersion获取版本号
			$Ersion = $ershou->where($version)->find();
            $this->assign('Ersion',$Ersion);
//			$this->assign('list',$list);// 赋值数据集
			
            $this->display("goods_detials");
       }else{
       	      	
            $this->assign("judge",'true');
            $this->assign("judge1",'false'); 
            //实例化ershou
            $ershou = M("ershou");
			$text = $_GET['text'];
//			ECHO $text;
//			print_r("asdasdasdasd".$text);die;
			$version["version"]=$text;
			//$Ersion获取版本号
			$Ersion = $ershou->where($version)->find();
//			print_r($Ersion);
            $this->assign('Ersion',$Ersion);      
            $this->display("goods_detials");
        }
    		
    }
  public function dianDetail(){
    	if(!empty($_SESSION['phone'])) {
    		//登录判断session用的
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            //实例化ershou
            $ershou = M("ershou");		
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
				//全部颜色或者其他
				$exttt = $ershou->select();
				$this->ajaxReturn($exttt);				
			}						
			$Color = $ershou->where($where)->select();
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
            $ershou = M("ershou");		
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
				$list = $ershou->select();
				$this->ajaxReturn($list);
			}						
			$Color = $ershou->where($where)->select();
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
	 	if(!empty($_SESSION['phone'])) {
   			$id=$_POST['id'];
   			$where["id"]=$id;   			
            $ershou = M("ershou");											
			$cha = $ershou->where($where)->select();
				if($cha){
					$info['status']=1;
					$info['info']="数据查询成功";
					$info['data'] = $cha;
				}else{
					$info['status']=2;
					$info['info']="数据查询失败";
				};		
				$this->ajaxReturn($info);
			}else{
				$info['status']=2;
				$this->ajaxReturn($info);
		}
    }
    
    
    
}