class HomeController < ApplicationController
  def list

    @posts = Post.all


  end

  def main


  end

  def write


  end


  def complete

    post = Post.new
    post.content = params[:content]
    post.save

    redirect_to "/list"



  end
end
