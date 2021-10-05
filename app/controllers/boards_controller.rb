class BoardsController < ApplicationController


  def index

    @boards = Board.all
    p @boards
    print "掲示板一覧を取得"
  end

  def show
  end

  def create

    p params
    insert = {
      "board_title" => params["board_title"],
      "board_description" => params["board_description"],
    }
    board = Board.create (insert)
    p board
  end

  def edit
    p "edit =====>", params
    p params;
    board = Board.find(params["id"]);
    p "selectd_board => ", board;
    # 取得したデータをインスタンス変数に追加する
    @board = board;
  end

  def update
    print "POSTされたデータを取得する --->" + "\n";
    p "post data => ", params;
    p "=================================="
    p params[:board_description];
    p params[:board_title];
    p params[:id]

    board = Board.find(params[:id])
    p board
    updating_data = {
      :board_description => params[:board_description],
      :board_title => params[:board_title],
    }
    response = board.update updating_data
    p response;
  end
end
