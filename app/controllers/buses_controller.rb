class BusesController < ApplicationController
  def index
    @buses = Bus.all
  end

  def new
    @bus = Bus.new
    @bus.build_number_plate
    @bus.build_vehicle_licence
  end

  def create
    bus = Bus.new(bus_params)
    if bus.save
      redirect_to buses_path
    else
      @bus = bus
      render :new
    end
  end

  def edit
    @bus = Bus.find(params[:id])
  end

  private

  def bus_params
    params.require(:bus).permit(:name, { photos: [] }, number_plate_attributes: [:series, :number, :region],
                                vehicle_licence_attributes: [:digit_code, :letter_code, :number, :release_date])
  end
end
