class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_params)
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update
      redirect_to booking_path(@booking)
    else
      render :update
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path
  end

  private

  def strong_params
    params.require(:booking).permit(:user_id, :date, :guests, :location, :cousine, :booked_user_id, :review_rating, :review_content)
  end
end