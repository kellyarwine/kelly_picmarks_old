class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def new
	end

	def create
	single_picture = Picture.new
	single_picture["url"] = params[:url]
	single_picture["title"] = params[:title]
	single_picture.save

	redirect_to all_pictures_url
	end

	def show
		@single_picture = Picture.find_by_id(params[:id])	
	end

	def delete
		single_picture = Picture.find_by_id(params[:id])	
		single_picture.destroy

		redirect_to all_pictures_path
	end

	def edit
		@passed_id = params[:id]
	end

	def update
		single_picture = Picture.find_by_id(params[:id])	
		single_picture["url"] = params[:url]
		single_picture["title"] = params[:title]
		single_picture.save

		redirect_to single_picture_path(params[:id])
	end
end	