class HomeController < ApplicationController
  def index
    @post=Post.where(if_del:false)
  end
end
