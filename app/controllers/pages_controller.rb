class PagesController < ApplicationController
	def about
		#@title is variable used in views > pages
		@title = 'About Us';
		@content = 'content stuff';

		
	end
end
