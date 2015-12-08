 

class DataController < ApplicationController

	def fetch
		require 'mongo'
require 'json' 
		
		connection = Mongo::Client.new(['ds059654.mongolab.com:59654/heroku_vknx18tr'], :database => 'heroku_vknx18tr', :user => 'nsd6275', :password => 'nsd6275');

		data = connection.database
		data1 = data.collection('DeathCause')
		@db = data1.find({:id => params[:x]});
	
	end

	render json: @db
end
