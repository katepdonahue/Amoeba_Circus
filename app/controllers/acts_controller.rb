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
    p = params[:act]
    @act.date = Date.parse("#{p["date(3i)"]}/#{p["date(2i)"]}/#{p["date(1i)"]}")
    @act.time = Time.parse("#{p["time(4i)"]}:#{p["time(5i)"]}")
    params[:act][:amoebas].each do |amoeba_id|
      @act.amoebas << Amoeba.find(amoeba_id)
    end
    @act.save
    redirect_to @act
  end

  def destroy
    Act.find(params[:id]).destroy
    redirect_to '/acts'
  end

end
