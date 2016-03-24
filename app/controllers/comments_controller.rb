class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @farm = Farm.find(params[:farm_id])
    comment = @farm.comments.create(comment_params.merge(user: current_user))
    redirect_to farm_path(@farm)
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :rating)
  end

end
