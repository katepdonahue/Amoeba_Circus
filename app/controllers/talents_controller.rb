class TalentsController < ApplicationController

  def index
    @talents = Talent.all
  end

  def new
    @talent = Talent.new
  end

  def create
    @talent = Talent.create(params[:talent])
    redirect_to @talent
  end

  def show
    @talent = Talent.find(params[:id])
  end

  def edit
    @talent = Talent.find(params[:id])
  end

  def update
    @talent = Talent.find(params[:id])
    @talent.update_attributes(params[:talent])
    redirect_to @talent
  end

  def destroy
    Talent.find(params[:id]).destroy
    redirect_to '/talents'
  end
  
end
