class Book < ApplicationRecord

  # BookモデルにUserモデルを関連付ける(アソシエーション)
  belongs_to :user, optional: true

  # バリデーションの実装-新規投稿が失敗したとき
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }

end
