class Role < ApplicationRecord
  has_many :users, through: :user_roles
  has_many :permissions, through: :role_permissions
end
