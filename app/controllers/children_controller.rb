class ChildrenController < ApplicationController

	def new 
	  @child - Child.new
	end

	def show
	 @child = Child.find_by(params[:id])
	end
	
end
