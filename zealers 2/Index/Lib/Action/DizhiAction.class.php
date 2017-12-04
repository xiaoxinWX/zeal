<?php
class DizhiAction extends Action {
	//首页
    public function index(){
    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("dizhi");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("dizhi");
        }	
    }
    //点击从数据库库中获取这个人的全部数据
    public function panduan(){
    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
        		//查找购物车的数据 
        		$uid = $_SESSION["uid"];
   			$where["uid"]=$uid;
   			$cart = M("cart");      		
        		//查找购物车的数据		     		      		
    		    $gouwuche = $cart->where($where)->select();     		
			$gouwuche = array_reverse($gouwuche);
			$this->assign("gouwuche",$gouwuche);
			$this->assign("goucount",count($gouwuche));	
            $this->display("dizhi");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $uid = $_SESSION["uid"];
   			$where["uid"]=$uid;
   			$cart = M("cart");      		
        		//查找购物车的数据		     		      		
    		    $gouwuche = $cart->where($where)->select();     		
			$gouwuche = array_reverse($gouwuche);
			$this->assign("gouwuche",$gouwuche);
			$this->assign("goucount",count($gouwuche));	
            $this->display("dizhi");
        }	
    }
    //获取购物车里面的所有数据
    public function huoqu(){
    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
             $uid = $_SESSION["uid"];
   			$where["uid"]=$uid;
            $cart = M("cart");
        		//查找购物车的数据 		     		      		
    		    $gouwuche = $cart->where($where)->select();     		
			$gouwuche = array_reverse($gouwuche);
			$this->assign("gouwuche",$gouwuche);
			$this->assign("goucount",count($gouwuche));	
            $this->display("dizhi");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $uid = $_SESSION["uid"];
   			$where["uid"]=$uid;
            $cart = M("cart");
        		//查找购物车的数据 		     		      		
    		    $gouwuche = $cart->where($where)->select();     		
			$gouwuche = array_reverse($gouwuche);
			$this->assign("gouwuche",$gouwuche);
			$this->assign("goucount",count($gouwuche));	
            $this->display("dizhi");
        }	
    }
	
}