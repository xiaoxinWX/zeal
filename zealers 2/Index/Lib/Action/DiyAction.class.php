<?php
class DiyAction extends Action {
	//首页
    public function index(){
	   	if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("diy");
        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("diy");
        }
    }
	
}