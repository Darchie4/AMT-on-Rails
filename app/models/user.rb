class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #Adding other fields
  attr_accessor :first_name, :last_name, :birthday, :phone, :gender
  validates_presence_of :first_name, :last_name, :birthday, :phone

  #Creates humanly readable labels
  def self.human_attribute_name (attr, options = {})
    case attr
    when :first_name
      "Fornavn(e)"
    when :last_name
      "Efternavn"
    when :birthday
      "Fødselsdag"
    when :phone
      "Telefon nr."
    else
      super
    end
  end

  has_one :address
  has_many :roles, through: :user_roles

end
