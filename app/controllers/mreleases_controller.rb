class MreleasesController < ApplicationController

	def show
		#@post = ModelName.find(idFromURL)
		@post = Mrelease.find(params[:id])
		#now create show.html.erb
	end



	def new #create new.html.erb for this method
		@post = Mrelease.new
	end



	def create #create create.html.erb for this method
		#puts submitted input values to localhost:3000/mreleases
		#params[formName]
		##render plain: params[:mrelease].inspect


		#definedVariable = ModelName.new(params[:mrelease])
		#@post = Mrelease.new(params[:mrelease])
		@post = Mrelease.new(mrelease_params)

		#save data
		if(@post.save)
			redirect_to @post #will load the show view - need to create it
		else
			render 'new'
		end
	end




	def edit
		@post = Mrelease.find(params[:id])
		#now create an edit.html.erb
	end




	def index #create index.html.erb for this method
		@posts = Mrelease.all
	end










	def update
		@post = Mrelease.find(params[:id])
		
		#update data
		if(@post.update(mrelease_params))
			redirect_to @post #will load the show view - need to create it
		else
			render 'edit'
		end
	end


	def destroy
		@post = Mrelease.find(params[:id])
		@post.destroy

		redirect_to mreleases_path
		#now go to show.html.erb to add the delete link
	end
	

	#to resolve error "ActiveModel::ForbiddenAttributesError in MreleasesController#create"
	private def  mrelease_params
	  #params.require(:mrelease).permit(:title, :release)
	  params.require(:mrelease).permit(:title, :release)
	end



end
