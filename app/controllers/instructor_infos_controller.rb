class InstructorInfosController < ApplicationController
  before_action :set_instructor_info, only: %i[ show edit update destroy ]

  # GET /instructor_infos or /instructor_infos.json
  def index
    @instructor_infos = InstructorInfo.all
  end

  # GET /instructor_infos/1 or /instructor_infos/1.json
  def show
  end

  # GET /instructor_infos/new
  def new
    @instructor_info = InstructorInfo.new
  end

  # GET /instructor_infos/1/edit
  def edit
  end

  # POST /instructor_infos or /instructor_infos.json
  def create
    @instructor_info = InstructorInfo.new(instructor_info_params)

    respond_to do |format|
      if @instructor_info.save
        format.html { redirect_to instructor_info_url(@instructor_info), notice: "Instructor info was successfully created." }
        format.json { render :show, status: :created, location: @instructor_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @instructor_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instructor_infos/1 or /instructor_infos/1.json
  def update
    respond_to do |format|
      if @instructor_info.update(instructor_info_params)
        format.html { redirect_to instructor_info_url(@instructor_info), notice: "Instructor info was successfully updated." }
        format.json { render :show, status: :ok, location: @instructor_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @instructor_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructor_infos/1 or /instructor_infos/1.json
  def destroy
    @instructor_info.destroy!

    respond_to do |format|
      format.html { redirect_to instructor_infos_url, notice: "Instructor info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor_info
      @instructor_info = InstructorInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instructor_info_params
      params.require(:instructor_info).permit(:user_id, :description, :profile_img_path)
    end
end
