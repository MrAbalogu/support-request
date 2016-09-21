class CommentsController < ApplicationController
  
  def create 
  	@request = Request.find(params[:request_id])
  	@comment = @request.comments.create(comments_params)
  	flash[:notice] = "Comment has been created"
  	redirect_to request_path(@request) 
  end 	

  def destroy
  	@request = Request.find(params[:request_id])
  	@request.comments.destroy
  	flash[:notice] = "Comment has been deleted"
  	redirect_to request_path(@request) 
  end
  
  private 

  def comments_params 
  	params.require(:comment).permit(:name, :body)
  end 	

end 