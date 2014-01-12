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
    p = params[:act]
    @act.name = p[:name]
    @act.date = Date.parse("#{p["date(3i)"]}/#{p["date(2i)"]}/#{p["date(1i)"]}")
    @act.time = Time.parse("#{p["time(4i)"]}:#{p["time(5i)"]}")
    p[:amoebas][1..-1].each do |amoeba_id|
      next if @act.amoebas.include? Amoeba.find(amoeba_id)
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
