class User < ApplicationRecord
  enum role: [:admin, :city_user]
  paginates_per 20

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :validatable
end
