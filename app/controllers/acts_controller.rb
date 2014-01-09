class ActsController < ApplicationController

  def index
    @acts = Act.all
  end

  def new
    @act = Act.new
  end

  def create
    @act = Act.create(params[:act])
    redirect_to @act
  end

  def show
    @act = Act.find(params[:id])
  end

  def edit
    @act = Act.find(params[:id])
  end

  def update
    @act = Act.find(params[:id])
    @act.update_attributes(params[:act])
    redirect_to @act
  end

  def destroy
    Act.find(params[:id]).destroy
    redirect_to '/acts'
  end

end
