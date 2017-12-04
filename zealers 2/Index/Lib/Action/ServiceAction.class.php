<?php
class ServiceAction extends Action {
	//客户服务页面
    public function index(){
	    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("service");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("service");
        }	
    }
	public function yijian(){
	    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("yijian");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("yijian");
        }	
    }
    public function help(){
	    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("help");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("help");
        }	
    }
    public function zixun(){
	    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("zixun");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("zixun");
        }	
    }
    public function shouhou(){
	    if(!empty($_SESSION['phone'])) {
            $this->assign("judge",'false');
            $this->assign("judge1",'true');
            $this->display("shouhou");

        }else{
            $this->assign("judge",'true');
            $this->assign("judge1",'false');
            $this->display("shouhou");
        }	
    }
}