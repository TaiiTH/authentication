<?php
    $route->any('/', ['Controller', 'home']);
    $route->get('/login', ['Controller', 'login']);
    $route->post('/login', ['Controller', 'actionLogin']);
    $route->get('/signup', ['Controller', 'signup']);
    $route->post('/signup', ['Controller', 'actionSignup']);
    $route->any('/home', ['Controller', 'home']);
    $route->get('/logout', ['Controller', 'actionLogout']);
    $route->get('/article_category', ['Controller', 'article_category']);
    $route->post('/article_category', ['Controller', 'actionaddArticle']);
    $route->get('/article_detail/?', ['Controller', 'article_detail']);