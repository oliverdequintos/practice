class Practice::API < Grape::API
  version 'v1'
  prefix :api
  format :json

  mount Practice::ArticleAPI
end
