class TopsController < ApplicationController


  def index

    @sample = "インスタンス変数"
    @pass_value = " value from controller to template";
    render("template" => "tops/index");
    print "ああ", "いい";
  end


  def list
    print("===");
    puts "ああああああああああああ";
    puts "コントローラーは半絵いされる";
    @value_test = "ーーー>インスタンス変数"
    print("コント―ラーの反映")
    print "----------------------------";
    render({"template" => "tops/list"});
  end


end
