class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # UserモデルにBookモデルを関連付ける(アソシエーション)
  has_many :books, dependent: :destroy

  attachment :profile_image
end
