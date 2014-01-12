class AmoebasController < ApplicationController

  def index
    @amoebas = Amoeba.all
  end

  def new
    @amoeba = Amoeba.new
  end

  def create
    @amoeba = Amoeba.create(params[:amoeba])
    redirect_to @amoeba
  end

  def show
    @amoeba = Amoeba.find(params[:id])
  end

  def edit
    @amoeba = Amoeba.find(params[:id])
  end

  def update
    @amoeba = Amoeba.find(params[:id])
    @amoeba.update_attributes(params[:amoeba])
    redirect_to @amoeba
  end

  def destroy
    Amoeba.find(params[:id]).destroy
    redirect_to '/amoebas'
  end


end
