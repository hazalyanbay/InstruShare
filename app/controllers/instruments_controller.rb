class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @instruments = Instrument.all

    @markers = @instruments.geocoded.map do |instrument|
      {
        lat: instrument.latitude,
        lng: instrument.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { instrument: instrument })
      }
    end
  end

  def show 
    @instrument = Instrument.find(params["id"])
  end

  def new
    @instrument = Instrument.new
  end

  def create 
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    if @instrument.save
      redirect_to instrument_path(@instrument)
    else
      render :new
    end
  end

  def edit
    @instrument = Instrument.find(params["id"])
  end

  def update
    @instrument = Instrument.find(params["id"])
    @instrument.update(instrument_params)

    redirect_to instrument_path(@instrument)
  end

  private

  def instrument_params
    params.require(:instrument).permit(:style, :description, :location, :rate, photos: [])
  end
end
