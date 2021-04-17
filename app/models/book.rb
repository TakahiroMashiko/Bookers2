class Book < ApplicationRecord

  # BookモデルにUserモデルを関連付ける(アソシエーション)
  belongs_to :user

end
