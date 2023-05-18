class Api::V1::CommentsController < ApplicationController
    before_action :set_comment, only: %i[update destroy]
    skip_before_action :verify_authenticity_token
    # GET /api/v1/users/:user_id/posts/:id/comments => to get a specific comments of a specific post
    def index
      @post = Post.find(params[:post_id])
      @comments = @post.comments
      render json: @comments.to_json
    end

    # GET /api/v1/users/:user_id/posts/:post_id/ => to get a specific comment of a specific post
    def show
      @comment = Comment.find(params[:id])
      render json: @comment.to_json
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.post = Post.find(params[:post_id])
        @comment.author = User.last
    
        if @comment.save
          render json: @comment, status: :created
        else
          render json: { error: @comment.errors.full_messages }, status: :unprocessable_entity
        end
    end
  
    def destroy
      @comment.destroy
    end
  
    private
  
    def set_comment
      @comment = Comment.find(params[:id])
    end
  
    def comment_params
      params.permit(:text)
    end
  end