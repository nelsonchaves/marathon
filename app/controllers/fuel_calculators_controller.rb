class FuelCalculatorsController < ApplicationController
  before_action :set_fuel_calculator, only: %i[ show edit update destroy ]

  def index
    @fuel_calculators = FuelCalculator.all
  end

  def show
  end

  def new
    @fuel_calculator = FuelCalculator.new
  end

  def edit
  end

  def create
    @fuel_calculator = FuelCalculator.new(fuel_calculator_params)

    respond_to do |format|
      if @fuel_calculator.save
        format.html { redirect_to fuel_calculator_url(@fuel_calculator), notice: "Fuel calculator was successfully created." }
        format.json { render :show, status: :created, location: @fuel_calculator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fuel_calculator.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @fuel_calculator.update(fuel_calculator_params)
        format.html { redirect_to fuel_calculator_url(@fuel_calculator), notice: "Fuel calculator was successfully updated." }
        format.json { render :show, status: :ok, location: @fuel_calculator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fuel_calculator.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @fuel_calculator.destroy

    respond_to do |format|
      format.html { redirect_to fuel_calculators_url, notice: "Fuel calculator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  
    def set_fuel_calculator
      @fuel_calculator = FuelCalculator.find(params[:id])
    end

    def fuel_calculator_params
      params.require(:fuel_calculator).permit(:weight, :distance, :elevation, :estimate_time, :temperature, :estimate_start)
    end
end
