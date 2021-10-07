class User < ApplicationRecord

  # eager loadingの設定
  has_many(:likes)
  has_many(:images)

  # バリデーションルールを追加する
  validates(:given_name, {:presence => true})
  validates(:family_name, {:presence => true})
  validates(:address, {:presence => true})
  validates(:comment, {:presence => true})
  validates(:birthday, {:presence => true})
  validates(:email, {:presence => true})
  validates(:gender, {:presence => true})
  validates(:password, {:presence => true})
  validates(:password_confirmation, {:presence => true})

  has_secure_password();
end
