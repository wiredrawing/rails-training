class TopsController < ApplicationController


  def index
    render({"template" => "tops/index"})
  end

  def index
    print "同一メソッドを複数用意する"
  end


  # def list
  #   print "aaaaaaaaaaaaaaaaa"
  #   puts "---->>>>";
  #   @method ="listああ method";
  #   print '@method => ', @method
  #   print "ああ"
  #   render({:template => "tops/list"});
  #   puts "あいうえお"
  # end


  def user
    print ">>メソッド名を変えてみた"
    @value_test = "これはuserメソッドです---->"
    @value_from_controller_to_views = "==ああああああああ"
    print '@value_test --->', @value_test
    # render({:template => "tops/list"});
    render({:template =>"tops/list"})
  end


  def aa
    @@class_value = "これはクラス変数 => シンタックスエラーから復帰"
    puts @@class_value
    puts @property_value = "これはインスタンス変数"
    print ("恋はスリルショックサースペン!"), ("相打ちりな");
    render_targe = {:template.to_s =>"tops/aa"}
    p "\n";
    puts render_targe
    response = render render_targe
    # p response;
  end


  def shop
    puts "shopメソッドを実行する"
    print "ターミナル", "コマンドプロンプト"
    @shop_value = "shop_value"
    print "@shop_value ===> ", @shop_value
    render({
      "template" => "tops/shop"
    })
  end


  def play()
    @sample = "インスタンス変数"
    @pass_value = " value from controller to template";

    render({
      :template.to_s() => "tops/index"
    });
  end

end
