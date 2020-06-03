class CommentController < ApplicationController

    def create 
      @comment = Comment.new(comment_params)
      @comment.save
      flash.notice = "Comment was successfully created!"
      redirect_to comment_path(@comment)
    end
  
    private
    
    def comment_params
    params.require(:comment).permit(:body)
  end
end
