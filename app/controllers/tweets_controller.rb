class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @user = User.find_by(uid: session[:login_uid])
    @tweet = Tweet.new(message: params[:tweet][:message])
    if @tweet.save
      redirect_to root_path
    else
      puts @tweet.errors.full_messages
      render :new
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path
  end
end
