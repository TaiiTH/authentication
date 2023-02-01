<div class="article__detail">
    <div class="container">
    <form method="POST" action="?page=add_article&action=addArticle" id="articleContent">
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
        <button type="submit" name="add_article" class="btn btn-primary">Add</button>
    </form>        
    </div>
</div>