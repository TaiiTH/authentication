{% extends 'layout.php' %}
{% block body %}
<div class="article__detail">
    <div class="container">
        {% include 'partials/breadcrumb.php' %}
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <header class="mb-4">
                    <h1>{{ articleDetail['title']}}</h1>
                    <ul class="d-flex align-items-center gap-4">
                        <li>
                            <i class="fa-regular fa-clock me-1"></i>
                            January 16, 2023
                        </li>
                        <li>
                            <i class="fa-solid fa-comments me-1"></i>
                            4
                        </li>
                    </ul>
                </header>
                <article>
                    {{ articleDetail['content']|raw }}
                </article>
            </div>

            <div class="col-lg-4 col-md-12">
                {% include 'partials/recent_post.php' %}
            </div>
        </div>
    </div>
</div>
{% endblock %}