class WelcomeController < ApplicationController
	respond_to :js, :json, :html
  # GET /welcome
  def abc

  	require "mongo"
	include Mongo

  	id = params[:id]


	connection = Mongo::Client.new(['ds059654.mongolab.com:59654/heroku_vknx18tr'], :database => 'heroku_vknx18tr', :user => 'nsd6275', :password => 'nsd6275')

	connection[:DeathCause].find('id' => id).each {|data| 
	}

	render :json => data

  end

end
