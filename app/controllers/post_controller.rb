class PostController < ApplicationController
  load_and_authorize_resource
  def new
  end
  def create
    s=Post.new()
    s.user_id=current_user.id
    s.title=params[:title]
    s.description=params[:description]
    s.if_del=false
    s.save

  end

  def delete
    s=Post.find(params[:id])
    s.if_del=true
    s.save
    redirect_to root_path
  end
end
