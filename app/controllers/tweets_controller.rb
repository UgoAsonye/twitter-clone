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
end

def destroy
  @tweet = Tweet.fing_by([id:])
  tweet.destroyrender json: {message: "Tweeter Deleter Running...Tweet has been successfully eliminated!"}
end
