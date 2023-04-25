class PortfosController < ApplicationController
  before_action :set_portfo, only: [:edit,:update,:show,:destroy]
  layout 'portfo'
  access all: [:show,:index,:angular], user: {except: [:destroy,:new,:create,:update,:edit,:sort]}, site_admin: :all
  
  def index
		@portfo=Portfo.by_position
	end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render nothing: true
  end

def angular
  @angular_portfolio_items=Portfo.angular
end

	def new
		@portfo=Portfo.new
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
                                   :main_image,
                                   :thumb_image,
                                   technologies_attributes: [:id, :name, :_destroy])
  end

def set_portfo
  @portfo=Portfo.find(params[:id])
end
end