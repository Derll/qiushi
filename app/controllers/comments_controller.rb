class CommentsController < ApplicationController
	def create
		c = Comment.new
		c.username = params[:username]
		c.title = params[:title]
		c.content = params[:content]
		c.guest_id = params[:guest_id]
		c.save
		guest = Guest.find(params[:guest_id])
		redirect_to guest
	end

	def show
		@comment = Comment.find(params[:id])
		@questions = @comment.questions
	end
end
