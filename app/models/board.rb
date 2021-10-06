class Board < ApplicationRecord

  # コメントの親テーブル
  has_many(
    :comments, -> { order ("id desc") }
  )
end
