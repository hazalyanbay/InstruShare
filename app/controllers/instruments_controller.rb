class InstrumentsController < ApplicationController
skip_before_action :authenticate_user!, only: :index
  def index
    @instruments = Instrument.all
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

  def update
    @instrument = Instrument.find(params["id"])
    @instrument.update(instrument_params)

    redirect_to instrument_path(@instrument)
  end

  private

  def instrument_params
    params.require(:instrument).permit(:style, :description, :location, :rate)
  end

  
end
