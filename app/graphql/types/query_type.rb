module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :authors, [Types::AuthorType], null: false, description: 'Return list of all authors'
    field :posts,   [Types::PostType], null: false, description: 'Return list of all posts'
    filed :authors_count, Integer, null: false, description: 'Return list of auhtors count'
    filed :posts_count,   Integer, null: false, description: 'Return list of posts count'

    def authors
      Author.all
    end

    def posts
      Post.all
    end

    def authors_count
      Author.count
    end

    def posts_count
      Post.count
    end
  end
end
