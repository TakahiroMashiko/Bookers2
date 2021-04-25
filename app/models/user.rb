class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # UserモデルにBookモデルを関連付ける(アソシエーション)
  has_many :books, dependent: :destroy

  # バリデーションの実装-ユーザのプロフィール更新が失敗したとき
  validates :name, presence: true , length: { minimum: 2, maximum: 20 }
  validates :introduction, length: { maximum: 50 }

  attachment :profile_image
end
