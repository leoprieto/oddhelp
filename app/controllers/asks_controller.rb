class AsksController < ApplicationController
	before_action :find_ask, only: [:show, :edit, :update, :destroy]

	def index
		@asks = Ask.all.order("created_at DESC")
	end

	def show
	end

	def new
		@ask = current_user.asks.build
	end

	def create
		@ask = current_user.asks.build(ask_params)

		if @ask.save
			redirect_to @ask, notice: "Exito Guardadamente nuevo Ask!"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @ask.update(ask_params)
			redirect_to @ask, notice: "Ask has been updated!"
		else
			render 'edit'
		end
	end

	def destroy
		@ask.destroy
		redirect_to root_path
	end

	private

	def ask_params
		params.require(:ask).permit(:title, :description, :image)
	end

	def find_ask
		@ask = Ask.find(params[:id])
	end
end
