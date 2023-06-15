class Article
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :description, type: String
  field :deleted, type: Mongoid::Boolean
end
