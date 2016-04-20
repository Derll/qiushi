class QuestionsController < ApplicationController
	def create
		q = Question.new
		q.username = params[:username]
		q.content = params[:content]
		q.comment_id = params[:comment_id]
		q.save
		comment = Comment.find(params[:comment_id])
		redirect_to comment
	end
end