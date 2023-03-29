class PortfosController < ApplicationController
	def index
		@portfolio_items=Portfo.all
	end

	def new
		@portfolio_item=Portfo.new
	end

def create
    @portfolio_item=Portfo.new(params.require(:portfolio).permit(:title,:subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfos_path, notice: "Your Portfolio item is now live." }
      else
        format.html { render :new}
      end
    end
  end

  def edit
    @portfolio_item=Portfo.find(params[:id])
end

def update
   @portfolio_item=Portfo.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title,:subtitle, :body))
        format.html { redirect_to portfos_path, notice: "The record was successfully updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item=Portfo.find(params[:id])
  end

  def destroy
    @portfolio_item=Portfo.find(params[:id])
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfos_url, notice: "Record was successfully removed." }
    end
  end
end

end
