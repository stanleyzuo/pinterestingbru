class BoardsController < ApplicationController
	def index
		@user = current_user
		@boards = Board.where(privacy:false) 
	end 

	def new
		@board = Board.new
	end

	def create
		@board = Board.new(board_params)
		@user = current_user
		@board.user = @user

		if @board.save 
		redirect_to @board
	else
		render 'new'
	end
end 

def show
		@board = Board.find params[:id]
	end 

def edit
  @board = Board.find(params[:id])
end

def update
	@board = Board.find(params[:id])

	if @board.update(board_params)
		redirect_to @board
	else
		render 'edit'
	end 
end 

def destroy
	@board =Board.find(params[:id])
	@board.destroy

	redirect_to boards_path
	end 

private 
def board_params 
	params.require(:board).permit(:name, :description, :privacy)
end  
end
