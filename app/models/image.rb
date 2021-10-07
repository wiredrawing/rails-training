class Image < ApplicationRecord

  # eager loadingの設定
  belongs_to(:user)

end
