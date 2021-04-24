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
  end
end
