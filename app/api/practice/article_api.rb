class Practice::ArticleAPI < Practice::API
  resource :articles do
    desc "List all Article"
    # localhost:4000/api/v1/articles
    get do
      @articles = Article.all.limit(10)
      present @articles, with: Practice::Entities::Article
    end

    # localhost:4000/api/v1/articles
    # with params here
    post do
      @article = Article.new(title: params[:title], content: params[:content])
      if @article.save
        present @article, with: Practice::Entities::Article
      end
    end
  end

end
