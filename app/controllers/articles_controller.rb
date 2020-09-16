class ArticlesController < ApplicationController

	def show
		# to retrieve an article 
		#article = Article.find(params[:id]) #pass the id from the db to the application, using the params hash
		#but this variable won't show up in the View (it is only available in the method here), we need to instead use an instance variable
		@article = Article.find(params[:id])
	end 
	
end 