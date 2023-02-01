<?php
class Controller {
    public $model, $view = null;
    public function __construct()
    {
        $this->model = new Model;
        $this->view = new View;
    }

    private function render($view_name) {
        // Convert pages to file_name
        $file_name = $view_name . '.php';        
        // Convert file_name to file_path
        $file_path = 'themes/pages/' . $file_name;
        require_once 'themes/layout.php';
    }

    public function home()
    {
        if($this->__checkLogin()) {
            $this->view->render('pages/home');
        } else {
            header("Location: login");
        };
    }
    public function actionUpdate()
    {
        $this->model->update();
    }
    public function actionChangePassword()
    {
        $this->model->changePassword();
    }

    public function signup()
    {
        if($this->__checkLogin()) {
            header("Location: home");
        } else {
            $this->view->render('pages/signup');
        }
    }
    public function actionSignup()
    {
        $this->model->signup();
    }

    public function login()
    {
        if($this->__checkLogin()) {
            header("Location: home");
        } else {
            $this->view->render('pages/login');
        }
    }
    public function actionLogin()
    {
        $this->model->login();
    }

    public function actionLogout()
    {
        $this->model->logout();
    }

    public function __checkLogin()
    {
        if(!getSession('user_name')) return false;
        return true;
    }

    public function article_category()
    {
        $model = $this->model->getAllArticle();
        $this->view->render('pages/article_category',[
            'articleList' => getSession('articleList')
        ]);
    }

    public function article_detail($slug)
    {
        $articleDetail = $this->model->getArticlebySlug($slug);
        $this->view->render('pages/article_detail',[
            'articleDetail' => $articleDetail
        ]);
    }

    public function add_article()
    {
        $this->render('add_article');
    }

    public function actionaddArticle()
    {
        $this->model->addArticle();
    }
}