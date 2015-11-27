class ReservasController < ApplicationController
	def index
	end
	def show
	end

	def create
    	@reserva= Reserva.new(reservas_params)
    	@reserva.user = current_user
    	@reserva.lodging = $hospedaje
   		 if (@reserva.save)
      		flash[:success] = "Se hizo el pedido de reserva"
      		redirect_to lodgings_path
    	else
      		render 'new'
      	end
	end
	def new

	end

	def update
	end

	def edit
		$hospedaje= Lodging.find(params[:id])
		@reserva= Reserva.new
		render 'new'
	end


	private
	def reservas_params
      params.require(:reserva).permit(:dateinit, :dateexit)
  	end

end
