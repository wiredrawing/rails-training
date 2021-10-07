json.extract! user, :id, :username, :email, :password_digest, :gender, :created_at, :updated_at
json.url user_url(user, format: :json)
