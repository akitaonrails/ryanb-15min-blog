class Page < ActiveRecord::Base
  validates_presence_of :title, :slug
  validates_format_of :slug, :with => /^([[:alnum:]_]+)$/
  has_many :comments, :as => :commentable
  
  def to_param
    slug
  end
end
