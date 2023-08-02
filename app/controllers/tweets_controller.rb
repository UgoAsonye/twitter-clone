class TweetsController < ApplicationController
  def create
    @tweet = Tweet.new(
      user_id: params[:user_id],
      text: params[:text],
      image: params[:image]
    )

    if @tweet.save
      render json: { message: "Tweet has been tweeted!" }, status: :created
    else
      render json: { errors: @tweet.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @tweets = Tweet.all
  end

def destroy
  @tweet = Tweet.find_by(id: params[:id])
  @tweet.destroy
  render json: {message: "Tweeter Deleter Running...Tweet has been successfully eliminated!"}
end
end

