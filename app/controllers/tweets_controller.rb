class TweetsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @tweet = Tweet.new
    @tweet.title = params[:tweet][:title]
    @tweet.content = params[:tweet][:content]
    @tweet.user_id = params[:tweet][:user_id]
    if @tweet.save
      redirect_to '/tweets/index'
    else
      redirect_to '/users/1'
    end
  end

end
