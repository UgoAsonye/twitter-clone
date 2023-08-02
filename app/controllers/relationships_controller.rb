class RelationshipsController < ApplicationController
  def create
    @relationship = Relationship.new(follower_id: current_user.id, leader_id: params[:leader_id])
    if @relationship.save
      redirect_to users_path, message: "You are now following this user."
    else
      redirect_to users_path, message: "Error following this user."
    end
  end

  def destroy
    @relationship = Relationship.find_by(follower_id: current_user.id, leader_id: params[:leader_id])
    if @relationship&.destroy
      redirect_to users_path, message: "You have unfollowed this user."
    else
      redirect_to users_path, message: "Error unfollowing this user."
    end
  end
end
