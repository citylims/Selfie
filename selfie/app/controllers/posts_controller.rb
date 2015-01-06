class PostsController < ApplicationController
	def index
		@post = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def edit
		
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to '/'
		else
			@post.errors.full_messages
		end
	end

	def update
		
	end

	def destroy
		
	end

	private

	def post_params
		params.require(:post).permit(:body)
	end
end 