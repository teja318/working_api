class GenderController < ApplicationController
  def determine
  	if params[:name]
  		response = HTTParty.get("https://gender-api.com/get?name=#{params[:name]}")
  		@result = JSON.parse(response.body)
  	end	
  end

end
