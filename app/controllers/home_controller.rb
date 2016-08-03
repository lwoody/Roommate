class HomeController < ApplicationController
  def list

    # @posts = Post.all


  end

  def main


  end

  def write
    # 로그인 후에 등록하게함
    # if user_signed_in?
    # else
    #   redirect_to '/users/sign_in'
    # end
    #


  end


  def complete

    # post = Post.new
    # post.content = params[:content]
    # post.person_name = params[:person_name]
    # post.gender = params[:gender]
    # post.age = params[:age]
    # post.school = params[:school]
    # post.major = params[:major]
    # post.grade = params[:grade]
    # post.save
    #
    # redirect_to "/list"



  end


end
