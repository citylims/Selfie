class SelfiesController < ApplicationController
	def index
		@selfie = Selfie.all
	end
end 