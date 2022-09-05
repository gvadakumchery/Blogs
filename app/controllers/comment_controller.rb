class CommentController < ApplicationController
  def index
    @comm=Comment.where(post_id:params[:id],if_del:false)
    #@comm=Comment.all
  end



  def new
    @ps=params[:id]
  end



  def create
  
    s=Comment.new()
    s.user_id=current_user.id
    s.post_id=params[:id]
    s.description=params[:description]
    s.if_del=false
    s.save
    redirect_to "/view_comment/#{params[:id]}" 
  end

  def delete
    s=Comment.find(params[:id])
    s.if_del=true
    s.save
    redirect_to "/view_comment/#{@ps}"
  end
end
