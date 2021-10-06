# コメント用名前空間
class Comment::CommentsController < ApplicationController
  def index
    # 対象の掲示板
    if(defined?(params["id"])) then
      @board = Board.find params[:id]
    else
      @board = nil;
    end
    # puts "============================="
    # print @board;
    # puts @board.board_title;
    # puts @board.board_description;
    # print @board.comments
    # @board   .   comments . each do |comment|
    #   puts "---comment---"
    #   puts comment.message
    # end
    render({template: "comments/index"})
  end

  def create
    print("コメントの投稿処理を実行")
    comment = Comment.create ({
      "message" => params["message"],
      "board_id" => params["id"],
      "written_by" => 1,
    })
    render({
      "template".intern() => "comments/create"
    })
  end

  def edit
  end
  def update
  end
  def show
  end
end
