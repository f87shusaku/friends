class TargetsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]

  def new
    @target = Target.new
  end

  def create
    @target = Target.create(target_params)
    if @target.save
      redirect_to user_path(@target.user.id)
    else
      render :new
    end
  end

  def edit
     @target = Target.find(params[:id])
  end

  def update
     @target = Target.find(params[:id])
    
    if @target.update(target_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def target_params
    params.require(:target).permit(:week, :day, :free, :money).merge(user_id: current_user.id)
  end
end
