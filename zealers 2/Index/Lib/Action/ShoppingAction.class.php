<?php
class ShoppingAction extends Action {
	//购物车
    public function index(){
    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $ershou = M("ershou");
   			$cart = M("cart");
   			$uid = $_SESSION["uid"];
   			$where_1["uid"]=$uid;			
            if(!empty($_GET["id"])){
            		$where["id"]=$_GET["id"]; 
            		$res = $ershou -> where($where) -> find();
            		$res["uid"]= $uid;
            		$cart->add($res);
            		if($res){
//		    			echo "2222456456";
		    			$gouwuche = $cart->where($where_1)->select();    		      		   		
					$gouwuche = array_reverse($gouwuche);
					$this->assign("gouwuche",$gouwuche);
					$this->assign("goucount",count($gouwuche));	        				
	        		} else{        			
//	        			echo "1111";
	        			$gouwuche = $cart->where($where_1)->select();      		      		   		
					$gouwuche = array_reverse($gouwuche);
					$this->assign("gouwuche",$gouwuche);
					$this->assign("goucount",count($gouwuche)); 
	        		}
            }else{           		
//      				echo "456";
        				if($res){
//		    			echo "2222";
		    			$gouwuche = $cart->where($where_1)->select();    		      		   		
					$gouwuche = array_reverse($gouwuche);
					$this->assign("gouwuche",$gouwuche);
					$this->assign("goucount",count($gouwuche));	       				
		        		} else{        			
//	        			echo "1111";
	        			$gouwuche = $cart->where($where_1)->select();     		      		   		
					$gouwuche = array_reverse($gouwuche);
					$this->assign("gouwuche",$gouwuche);
					$this->assign("goucount",count($gouwuche)); 
	        		}     		      		
            }        			       		        		       		
        		     		      		                		
														    
            $this->display("shopping");
        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $uid = $_SESSION["uid"];
   			$where["uid"]=$uid;
   			$ershou = M("ershou");
   			$cart = M("cart");
        		$res = $ershou -> where($where) -> find();
        		$chagou=$cart->where($where)->find();    		
			if($chagou){
				//查找到我们需要把购物车全部遍历一遍
				$gouwuche = $cart->select(); 
			}else{
				//否则的话我们就插入数据库
				$cart->add($res); 
			}       		      		
    		    $gouwuche = $cart->select();
    		    $gouCount = $cart->count();    		
			$gouwuche = array_reverse($gouwuche);
			$this->assign("gouwuche",$gouwuche);	
			$this->assign("goucount",$gouCount);											
            $this->display("shopping");
        }	
    }
    public function peijian(){
    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $peijian = M("peijian");
   			$cart = M("cart");
   			$uid = $_SESSION["uid"];
   			$where_1["uid"]=$uid;			
            if(!empty($_GET["id"])){
            		$where["id"]=$_GET["id"]; 
            		$res = $peijian -> where($where) -> find();
            		$res["uid"]= $uid;
            		$cart->add($res);
            		if($res){
//		    			echo "2222456456";
		    			$gouwuche = $cart->where($where_1)->select();    		      		   		
					$gouwuche = array_reverse($gouwuche);
					$this->assign("gouwuche",$gouwuche);
					$this->assign("goucount",count($gouwuche));	        				
	        		} else{        			
//	        			echo "1111";
	        			$gouwuche = $cart->where($where_1)->select();      		      		   		
					$gouwuche = array_reverse($gouwuche);
					$this->assign("gouwuche",$gouwuche);
					$this->assign("goucount",count($gouwuche)); 
	        		}
            }else{           		
//      				echo "456";
        				if($res){
//		    			echo "2222";
		    			$gouwuche = $cart->where($where_1)->select();    		      		   		
					$gouwuche = array_reverse($gouwuche);
					$this->assign("gouwuche",$gouwuche);
					$this->assign("goucount",count($gouwuche));	       				
		        		} else{        			
//	        			echo "1111";
	        			$gouwuche = $cart->where($where_1)->select();     		      		   		
					$gouwuche = array_reverse($gouwuche);
					$this->assign("gouwuche",$gouwuche);
					$this->assign("goucount",count($gouwuche)); 
	        		}     		      		
            }        			       		        		       		
        		     		      		                		
														    
            $this->display("shopping");
        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $uid = $_SESSION["uid"];
   			$where["uid"]=$uid;
   			$peijian = M("peijian");
   			$cart = M("cart");
        		$res = $peijian -> where($where) -> find();
        		$chagou=$cart->where($where)->find();    		
			if($chagou){
				//查找到我们需要把购物车全部遍历一遍
				$gouwuche = $cart->select(); 
			}else{
				//否则的话我们就插入数据库
				$cart->add($res); 
			}       		      		
    		    $gouwuche = $cart->select();
    		    $gouCount = $cart->count();    		
			$gouwuche = array_reverse($gouwuche);
			$this->assign("gouwuche",$gouwuche);	
			$this->assign("goucount",$gouCount);											
            $this->display("shopping");
        }	
    }
    //删除购物车内部的数据
	 public function del(){
    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $uid = $_SESSION["uid"];
   			$where_1["uid"]=$uid;
   			$where["id"]=$_GET["id"];			
   			$cart = M("cart");
        		$shangou=$cart->where($where)->delete(); 		
			//查找到我们需要把购物车全部遍历一遍,然后重新生成
			$gouwuche = $cart->where($where_1)->select();
			$gouwuche = array_reverse($gouwuche);
			$this->assign("gouwuche",$gouwuche);	
			$this->assign("goucount",count($gouwuche));													    
       		$this->display("shopping"); 			     		      		   		       					
        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
   			$uid = $_SESSION["uid"];
   			$where_1["uid"]=$uid;
   			$where["id"]=$_GET["id"];			
   			$cart = M("cart");
        		$shangou=$cart->where($where)->delete(); 		
			//查找到我们需要把购物车全部遍历一遍,然后重新生成
			$gouwuche = $cart->where($where_1)->select();
			$gouwuche = array_reverse($gouwuche);
			$this->assign("gouwuche",$gouwuche);	
			$this->assign("goucount",count($gouwuche));													    
       		$this->display("shopping"); 			     											    
       		$this->display("shopping"); 
			     		      		   	
        }	
    }
	
}