class Permission < ApplicationRecord
  has_many :roles, through: :role_permissions
end
