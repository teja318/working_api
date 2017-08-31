class GoogleController < ApplicationController
  def distance
  	if params[:origin && :destination]
  	 response = HTTParty.get("http://maps.googleapis.com/maps/api/distancematrix/json?origins=#{params[:origin]}&destinations=#{params[:destination]}")
   @result = JSON.parse(response.body)
   end	
 end
  def address
  	if params[:address]
  		response = HTTParty.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{params[:address]}")
  		@result = JSON.parse(response.body)
  	end
  end		
end
