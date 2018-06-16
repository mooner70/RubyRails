class Blog < ActiveRecord::Base
  has_many :posts
  # has_many :posts, through: :messages
  validates :name, :description, presence: true

end
