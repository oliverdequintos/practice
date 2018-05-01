module Practice
  module Entities
    class Article < Grape::Entity
      expose :id
      expose :title
      expose :content
    end
  end
end
