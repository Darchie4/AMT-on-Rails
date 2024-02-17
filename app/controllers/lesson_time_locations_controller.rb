class LessonTimeLocationsController < ApplicationController
  before_action :set_lesson_time_location, only: %i[ show edit update destroy ]

  # GET /lesson_time_locations or /lesson_time_locations.json
  def index
    @lesson_time_locations = LessonTimeLocation.all
  end

  # GET /lesson_time_locations/1 or /lesson_time_locations/1.json
  def show
  end

  # GET /lesson_time_locations/new
  def new
    @lesson_time_location = LessonTimeLocation.new
  end

  # GET /lesson_time_locations/1/edit
  def edit
  end

  # POST /lesson_time_locations or /lesson_time_locations.json
  def create
    @lesson_time_location = LessonTimeLocation.new(lesson_time_location_params)

    respond_to do |format|
      if @lesson_time_location.save
        format.html { redirect_to lesson_time_location_url(@lesson_time_location), notice: "Lesson time location was successfully created." }
        format.json { render :show, status: :created, location: @lesson_time_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lesson_time_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_time_locations/1 or /lesson_time_locations/1.json
  def update
    respond_to do |format|
      if @lesson_time_location.update(lesson_time_location_params)
        format.html { redirect_to lesson_time_location_url(@lesson_time_location), notice: "Lesson time location was successfully updated." }
        format.json { render :show, status: :ok, location: @lesson_time_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lesson_time_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_time_locations/1 or /lesson_time_locations/1.json
  def destroy
    @lesson_time_location.destroy!

    respond_to do |format|
      format.html { redirect_to lesson_time_locations_url, notice: "Lesson time location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_time_location
      @lesson_time_location = LessonTimeLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lesson_time_location_params
      params.require(:lesson_time_location).permit(:lesson_id, :location_id, :week_day, :start_time, :end_time)
    end
end
