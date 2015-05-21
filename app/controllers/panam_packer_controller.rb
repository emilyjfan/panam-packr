class PanamPackerController < ApplicationController

	def index
		base_items = [ "Cash", "Ticket", "Camera", "Re-usable water bottle", "Snacks" ]
		rain       = ["Umbrella", "Rain Jacket"]
		clear_day  = ["Sunscreen", "Hat", "Sunglasses"]
		cool       = ["Jacket or Sweater"]
	end

end
