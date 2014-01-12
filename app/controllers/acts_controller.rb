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
    @act.name = params[:act][:name]
    # @act.date = 
    # @act.time =
    params[:act][:amoebas].each do |amoeba_id|
      @act.amoebas << Amoeba.find(amoeba_id)
    end
    redirect_to @act
  end

  def destroy
    Act.find(params[:id]).destroy
    redirect_to '/acts'
  end

end
