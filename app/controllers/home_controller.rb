class HomeController < ApplicationController
	before_action :authenticate_user
	def index
		redirect_to blogs_path if logged_in?
	end 
end