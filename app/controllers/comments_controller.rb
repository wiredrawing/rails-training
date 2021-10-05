class CommentsController < ApplicationController






  def my_function(aaa, bbb)

    print(aaa);
    print(bbb);
  end



  def create

    print "メソッドのブラッシュアップをする"
    print (my_function("aaa", "bbb"))
    render    (
      {
        :template => "tops/index"
      }
    )
  end

end
