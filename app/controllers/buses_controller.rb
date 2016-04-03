class BusesController < ApplicationController
  def index
    @buses = Bus.all.page params[:page]
    @total = Bus.count
  end

  def new
    @bus = Bus.new
    @bus.build_number_plate
    @bus.build_vehicle_licence
    @bus.photos.new
  end

  def create
    bus = Bus.new(bus_params)
    if bus.save
      flash[:success] = t('flash_messages.create.success')
      redirect_to buses_path
    else
      @bus = bus
      @bus.photos.new
      render :new
    end
  end

  def edit
    @bus = Bus.find(params[:id])
    @bus.photos.new
  end

  def update
    bus = Bus.find(params[:id])

    if bus.update_attributes(bus_params)
      flash[:success] = t('flash_messages.update.success')
      redirect_to buses_path
    else
      @bus = bus
      render :edit
    end
  end

  def destroy
    bus = Bus.find(params[:id])

    if bus.destroy
      flash[:success] = t('flash_messages.destroy.success')
      redirect_to(:back)
    else
      render :index
    end
  end

  private

  def bus_params
    params.require(:bus).permit(:name,
                                photos_attributes: [:image, :_destroy, :id],
                                number_plate_attributes: [:series, :number, :region],
                                vehicle_licence_attributes: [:digit_code, :letter_code, :number, :release_date])
  end
end
