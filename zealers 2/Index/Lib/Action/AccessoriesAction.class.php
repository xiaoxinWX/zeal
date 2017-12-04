<?php
class AccessoriesAction extends Action {
	//精品配件
    public function index(){
    	if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("Accessories");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("Accessories");
        }	
    }
	public function goodsDetailPei(){
    	if(!empty($_SESSION['phone'])) {
    			//登录判断session用的
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            //实例化ershou
            $peijian = M("peijian");
			$text = $_GET['text'];
			
			$yangshi["yangshi"]=$text;
			//$Ersion获取版本号
			$Ersion = $peijian->where($yangshi)->find();
            $this->assign('Ersion',$Ersion);
			
            $this->display("accessories_details");
       }else{
       	      	
            $this->assign("judge",'true');
            $this->assign("judge1",'false'); 
            //实例化ershou
            $peijian = M("peijian");
			$text = $_GET['text'];
			
			$yangshi["yangshi"]=$text;
			//$Ersion获取版本号
			$Ersion = $peijian->where($yangshi)->find();
            $this->assign('Ersion',$Ersion);      
            $this->display("accessories_details");
        }
    		
    }
    
     public function dianDetail(){
    	if(!empty($_SESSION['phone'])) {
    		//登录判断session用的
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            //实例化ershou
            $peijian = M("peijian");
			$Html=$_POST["Html"];
			if($Html=="橙色"||$Html=="黑色"||$Html=="午夜蓝色"||$Html=="岩石色"||$Html="中国红"){
				$where["color"]=$Html;
			}else if($Html=="iPhone 6/6s"||$Html=="iPhone 6P/6sP"||$Html=="iPhone 7"||$Html=="iPhone 7 Plus"){
				$where["jixing"]=$Html;
			}else{
				//全部颜色或者其他
				$exttt = $peijian->select();
				$this->ajaxReturn($exttt);				
			}						
			$Color = $peijian->where($where)->select();
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
            $peijian = M("peijian");
			$Html=$_POST["Html"];
//			print_r($Html);die;
			if($Html=="橙色"||$Html=="黑色"||$Html=="午夜蓝色"||$Html=="岩石色"||$Html="中国红"){
				$where["color"]=$Html;
			}else if($Html=="iPhone 6/6s"||$Html=="iPhone 6P/6sP"||$Html=="iPhone 7"||$Html=="iPhone 7 Plus"){
				$where["jixing"]=$Html;
			}else{
				//全部颜色或者其他
				$exttt = $peijian->select();
				$this->ajaxReturn($exttt);				
			}						
			$Color = $peijian->where($where)->select();
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
            $peijian = M("peijian");											
			$cha = $peijian->where($where)->select();
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