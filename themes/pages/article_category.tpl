{% extends 'layout.php' %}
{% block body %}
<div class="article_category">
    <div class="container">
        {% include 'partials/breadcrumb.php' %}
        <div class="row">
            <div class="col-lg-8 col-md-12 col-sm-12">
                {% for items in articleList %}
                    <div class="row mb-50 article_category__item">
                        <div class="col-md-5">
                            <div class="article_category__item--img">
                                <a href="article_detail/{{ items['slug'] }}">
                                    <img src="http://demos.alithemes.com/html/ultranews/demo/assets/imgs/news-11.jpg" alt="img-article">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <h4 class="article_category__item--title">
                                <a href="article_detail/{{ items['slug'] }}">{{ items['title'] }}</a>
                            </h4>
                            <div class="text-secondary mb-3">
                                <span>
                                    <i class="fa-regular fa-clock me-1"></i>
                                    January 16, 2023
                                </span>
                            </div>
                            <p class="font-medium">{{ items['intro'] }}</p>
                            <a class="btn-more" href="#">
                                Read More
                                <i class="fa-solid fa-right-long"></i>
                            </a>                    
                        </div>
                    </div>
                    {% endfor %}
            </div>
            <div class="col-lg-4 col-md-12 col-sm-12">
                <div class="sidebar ps-4">
                    <div class="mb-4">
                        <h3>
                            <span>Add Post</span>
                        </h3>                    
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Add Article</button>
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">New message</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form method="POST" action="article_category" id="articleContent">
                                        <div class="modal-body">
                                            <div class="row mb-3">
                                                <label for="title" class="col-sm-2 col-form-label">Title</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="title" class="form-control" id="title">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="intro" class="col-sm-2 col-form-label">Intro</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="intro" class="form-control" id="intro">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="content" class="col-sm-2 col-form-label">Content</label>
                                                <div class="col-sm-10">
                                                    <textarea id="content" name="content" class="form-control"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            <button type="submit" name="add_article" class="btn btn-primary">Add</button>
                                        </div>
                                    </form>  
                                </div>
                            </div>
                        </div>                        
                    </div>
                    {% include 'partials/recent_post.php' %}             
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}