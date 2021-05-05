class Api::GroupsController < ApplicationController
  def index
    @groups = Group.all
    render "index.json.jb"
  end

  def show
    @group = Group.find(params[:id])
    render "show.json.jb"
  end

  def create
    @group = Group.new(
      name: params[:name],
      description: params[:description],
      # private: group.private,
    )

    if @group.save
      @group_creator = current_user.id
      @group_id = @group.id
      @user_group = UserGroup.create(user_id: @group_creator, group_id: @group_id)
      render "show.json.jb"
    else
      render json: { errors: @group.errors.full_messages }, status: 406
    end
  end

  def join
    @group = Group.find(params[:id])

    # if UserGroup.where(user_id: current_user.id, group_id: @group.id)
    #   render json: { message: "You are already in this group" }
    # else
    user_id = current_user.id
    group_id = @group.id
    @user_group = UserGroup.create(user_id: user_id, group_id: group_id)
    render "show.json.jb"
    # end
  end
end
