class WelcomeController < ApplicationController

  # GET /welcome
  def index

  	require "mongo"
	include Mongo
	
  	id = params[:id]


	connection = Mongo::Client.new(['ds059654.mongolab.com:59654/heroku_vknx18tr'], :database => 'heroku_vknx18tr', :user => 'nsd6275', :password => 'nsd6275')

	connection[:DeathCause].find('id' => id).each {|data| 
	puts data }

	render :json => data
  end

end
