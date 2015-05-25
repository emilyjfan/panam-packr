class PanamPackerController < ApplicationController

	def index
		base_items = [ "Cash", "Ticket", "Camera", "Re-usable water bottle", "Snacks" ]
		rain       = ["Umbrella", "Rain Jacket"]
		clear_day  = ["Sunscreen", "Hat", "Sunglasses"]
		cool       = ["Jacket or Sweater"]
		@forecast = ForecastIO.forecast(37.8267, -122.423)
	end

end
