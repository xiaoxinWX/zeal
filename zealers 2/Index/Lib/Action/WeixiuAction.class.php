<?php
class WeixiuAction extends Action {
	//手机维修
    public function index(){
	    	if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("weixiu");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("weixiu");
        }
    }
	
}