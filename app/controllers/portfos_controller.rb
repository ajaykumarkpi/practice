class PortfosController < ApplicationController
	def index
		@portfolio_items=Portfo.all
	end
end
