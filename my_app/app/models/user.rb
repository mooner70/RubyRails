class User < ActiveRecord::Base
  had_one :address
  has_many :messages
end
