class Post < ActiveRecord::Base
  named_scope :limit, proc { |limit| {:limit => limit.to_i} }
  
  validates_presence_of :body, :title
  has_many :comments, :as => :commentable
end
