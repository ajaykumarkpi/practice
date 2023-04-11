class PortfosController < ApplicationController
  before_action :set_portfo, only: [:edit,:update,:show,:destroy]
  layout 'portfo'

  def index
		@portfo=Portfo.all
	end

def angular
  @angular_portfolio_items=Portfo.angular
end

	def new
		@portfo=Portfo.new
    3.times {@portfo.technologies.build}
	end

def create
    @portfo=Portfo.new(portfo_params)
    
    respond_to do |format|
      if @portfo.save
        format.html { redirect_to portfos_path, notice: "Your Portfolio item is now live." }
      else
        format.html { render :new}
      end
    end
  end

def edit
end

def update
    respond_to do |format|
      if @portfo.update(portfo_params)
        format.html { redirect_to portfos_path, notice: "The record was successfully updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    @portfo.destroy
    respond_to do |format|
      format.html { redirect_to portfos_url, notice: "Record was successfully removed." }
    end
  end

  private

  def portfo_params
    params.require(:portfo).permit(:title,
                                   :subtitle, 
                                   :body, 
                                   technologies_attributes: [:name])
end

def set_portfo
  @portfo=Portfo.find(params[:id])
end
end