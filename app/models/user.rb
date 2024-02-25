class User < ApplicationRecord
  has_one :address
  has_many :roles, through: :user_roles
end
