class PagesController < ApplicationController
	def index
		if !session[:random_number]
			session[:random_number] = rand(1..10)
		end

		

		if !flash[:random_number]
			flash[:random_number] = rand(1..10).to_s
		end
	end
end