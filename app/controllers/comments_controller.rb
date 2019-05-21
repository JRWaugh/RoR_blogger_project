class CommentsController < ApplicationController
    include CommentsHelper
    def create
        #article_params is function defined in articles_helper
        @comment = Comment.new(comment_params)
        @comment.article_id = params[:article_id]
        @comment.save
        redirect_to article_path(@comment.article)
    end
end
