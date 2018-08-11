class Api::PagesController < ApplicationController
  def mypage
    @comments = Comment.all.order('updated_at DESC')
  end
  def users
    @comments = Comment.all.order('updated_at DESC')
  end
end
