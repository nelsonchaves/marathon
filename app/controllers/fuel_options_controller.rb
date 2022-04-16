class FuelOptionsController < ApplicationController
  before_action :set_fuel_option, only: %i[ show edit update destroy ]

  def index
    @fuel_options = FuelOption.all
  end

  def show
  end

  def new
    @fuel_option = FuelOption.new
  end

  def edit
  end

  def create
    @fuel_option = FuelOption.new(fuel_option_params)

    respond_to do |format|
      if @fuel_option.save
        format.html { redirect_to fuel_option_url(@fuel_option), notice: "Fuel option was successfully created." }
        format.json { render :show, status: :created, location: @fuel_option }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fuel_option.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @fuel_option.update(fuel_option_params)
        format.html { redirect_to fuel_option_url(@fuel_option), notice: "Fuel option was successfully updated." }
        format.json { render :show, status: :ok, location: @fuel_option }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fuel_option.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @fuel_option.destroy

    respond_to do |format|
      format.html { redirect_to fuel_options_url, notice: "Fuel option was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_fuel_option
      @fuel_option = FuelOption.find(params[:id])
    end

    def fuel_option_params
      params.fetch(:fuel_option, {})
    end
end
