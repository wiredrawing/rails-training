

class UsersController < ApplicationController


  def new
    @user
  end

  def index
  end

  def create
    print("新規登録ユーザー情報を取得");
    p("params ---->");
    p(params);

    @user = nil;
    # 新規登録の検証
    new_user = User.new({
      "username" => params["username"],
      "email" => params["email"],
      "description" => params["description"],
      "password" => params["password"],
      "password_confirmation" => params["password_confirmation"]
    });
    p("new_user ===>")
    # この時点ではまだレコードに登録されていない
    p(new_user);
    if (new_user.valid?) then
      p("新規登録ユーザーは妥当です")
      # saveメソッドで改めてinsert処理となる
      response = new_user.save()
      p("response ====>", response); # true or false

    else
      p("新規登録ユーザーは不正です");
      p(new_user);
      p("new_user.errors ====>");
      p(new_user.errors());
      new_user.errors.each do |error, |
        p("error.attribute--->", error.attribute);
        p("error--->", error.message());
      end
      @user = new_user
    end

  end

  def update
  end

  def edit
  end

end
