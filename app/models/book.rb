class Book < ApplicationRecord

  # BookモデルにUserモデルを関連付ける(アソシエーション)
  belongs_to :user, optional: true

end
