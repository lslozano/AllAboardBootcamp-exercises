class CommentsController < ApplicationController
    before_action :load_comments, only: [:index]

    def index
    end

    def new
        @comment = Comment.new
    end

    def create
        comment_body = params[:comment][:body]
        user_id = session[:user_id]
        new_comment = Comment.create(body: comment_body, user_id: user_id)
        redirect_to :comments
    end

    private

    def load_comments
        @comments = Comment.all
    end
end
