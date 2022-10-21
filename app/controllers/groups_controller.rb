class GroupsController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @groups = @user.groups
  end

  def show
    @groups = Group.find(params[:id])
  end

  def new
    @groups = Group.new
  end

  def create
    @new_group = current_user.groups.create(group_params)

    redirect_to root_path if @new_group.save
  end

  def group_params
    params.require(:group).permit(:user_id, :name, :icon)
  end
end
