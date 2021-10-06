class User < ApplicationRecord



  # バリデーションチェック
  validates :username, {
    :presence => true,
    :length => {
      :minimum => 5,
      :maximum => 256,
    }
  }
  validates(:email, {
    :presence => true,
    length: {
      minimum: 1,
      maximum: 256
    }
  })
  validates(:password, {
    :presence => true,
    :length => {
      :minimum => 10,
      :maximum => 72
    }
  })


  has_secure_password
end
