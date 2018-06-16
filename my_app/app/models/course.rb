class Course < ActiveRecord::Base
  has_many :signup
  has_many :students, through :signups
end
