<?php
require_once 'Database.php';

class Model extends Database
{
    public function signup()
    {
        if (isset($_POST['register'])) {
            $user_name = $_POST['user_name'];
            $birthday = $_POST['birthday'];
            $email = $_POST['email'];
            $password = md5($_POST['password']);

            if ($this->selectDB('users', ['email' => $email]) > 0) {
                setcookie('error', 'Email is Already Taken', time() + 1);
                header("Location: signup");
            } else {
                $qry = $this->insertDB('users', ['user_name', 'birthday', 'email', 'password'], [$user_name, $birthday, $email, $password]);
                if ($qry) header("Location: login");
            }
        }
    }

    public function login()
    {
        $email = $_POST['email'];
        $password = md5($_POST['password']);

        $data = $this->selectDB('users', ['email' => $email, 'password' => $password]);
        if ($data) {
            foreach($data[0] as $key => $value)
            {
                setSession($key, $value);
            }
            header("Location: home");
        } else {
            setcookie('error', 'Email or password is incorrect !!', time() + 1);
            header("Location: login");
        }
    }

    public function logout()
    {
        session_destroy();
        header("Location: login");
    }

    public function update()
    {
        $id = getSession('id');
        $user_name = $_POST['user_name'];
        $birthday = $_POST['birthday'];

        $this->updateDB('users', ['user_name' => $user_name, 'birthday' => $birthday], ['id' => $id]);
        setSession('user_name', $user_name);
        setSession('birthday', $birthday);
        header("Location: home");
    }

    public function changePassword()
    {   
        if (isset($_POST['changePassword'])) {
            $id = getSession('id');
            $password = getSession('password');
    
            $re_old_password = md5($_POST['password_old']);
            $new_password = md5($_POST['password_new']);
            $password_confirm = md5($_POST['password_confirm']);
    
            if ($re_old_password != $password) {
                setcookie('error', 'Old Password not matched !!', time() + 1);
                header("Location: home");
            } else {
                $this->updateDB('users', ['password' => $new_password], ['id' => $id]);
                header("Location: home");
            }
        }
    }

    public function addArticle()
    {
        if (isset($_POST['add_article'])) {
            $title = $_POST['title'];
            $intro = $_POST['intro'];
            $content = $_POST['content'];
            $slug = to_slug($title);
            $qry = $this->insertDB('articles', ['title', 'intro', 'content', 'slug'], [$title, $intro, addslashes($content), $slug]);
            if ($qry) header("Location: article_category");
        }
    }

    public function getAllArticle()
    {
        $data = $this->selectDB('articles');
        setSession("articleList", $data);
    }

    public function getArticlebySlug($slug)
    {
        $data = $this->selectDB('articles', ['slug' => $slug]);
        return $data[0];
    }
}