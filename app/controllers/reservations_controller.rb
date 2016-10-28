class ReservationsController < ApplicationController
  layout "admin", only: :index
  http_basic_authenticate_with name: "admin", password: "12341", only: :index

  def index
    @table = Table.new(self, Reservation, nil, buttons: false)
    @table.respond
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render 'success'
    else
      render 'error'
    end
  end

  def calendar
    start_date = Date.parse(params[:start])
    end_date = Date.parse(params[:end])
    @reservations = Reservation.where(date: start_date..end_date)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:firstname, :lastname, :email, :phone, :address, :zip, :city, :date, :description)
  end

end
