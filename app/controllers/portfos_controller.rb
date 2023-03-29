class PortfosController < ApplicationController
	def index
		@portfolio_items=Portfo.all
	end

	def new 
		@portfolio_items=Portfo.new
	end

	def create
		@portfolio_item=Portfo.new(params.require(:portfo).permit(:title,:subtitle,:body))
		respond_to do |f|
			if @portfolio_item.save
				f.html{redirect_to @portfos_path,notice:'your portfolio'}
			else
				f.html{render:new}
			end
		end
	end
end
