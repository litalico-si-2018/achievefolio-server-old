class Api::PagesController < ApplicationController
  def mypage
    @comments = Comment.all.order('updated_at DESC')
    @user = User.find(1)
    @drops = @user.posts.where(approved: true)
    
    @posts = @user.posts
  end
  def users
    @comments = Comment.all.order('updated_at DESC')
  end
end
