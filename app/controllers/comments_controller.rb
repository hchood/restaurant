class CommentsController < ApplicationController
  def create
    @menu_item = MenuItem.find(params[:menu_item_id])
    @comment = Comment.new(params.require(:comment).permit(:body))
    @comment.menu_item = @menu_item
    if @comment.save
      redirect_to menu_item_path(@menu_item), notice: "Your comment was created successfully."
    else
      redirect_to menu_item_path(@menu_item), notice: "There was an issue with your comment. Please try again."
    end
  end
end
