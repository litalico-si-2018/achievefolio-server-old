class Api::CommentsController < ApplicationController

  # GET /comments
  def index
    # 更新順
    @comments = Comment.all.order('updated_at DESC')
    render json: {
      "user": [
        {
          "name" => "aa",
          "id" => 1
        },
        {
          "name" => "bb",
          "id" => 2
        }
      ],
      "comment":
        @comments.map {|f|
          [id: f.id,c: f.body]
        }
    }
  end

  # POST /comments
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render :show, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      render :show, status: :ok
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.fetch(:comment, {}).permit(:body)
    end

end