class PortfosController < ApplicationController
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
    @portfo=Portfo.find(params[:id])
end

def update
   @portfo=Portfo.find(params[:id])
    respond_to do |format|
      if @portfo.update(portfo_params)
        format.html { redirect_to portfos_path, notice: "The record was successfully updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfo=Portfo.find(params[:id])
  end

  def destroy
    @portfo=Portfo.find(params[:id])
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
end