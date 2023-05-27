class AiHelpersController < ApplicationController
  before_action :set_ai_helper, only: %i[ show edit update destroy ]

  # GET /ai_helpers or /ai_helpers.json
  def index
    @ai_helpers = AiHelper.all
  end

  # GET /ai_helpers/1 or /ai_helpers/1.json
  def show
  end

  # GET /ai_helpers/new
  def new
    @ai_helper = AiHelper.new
  end

  # GET /ai_helpers/1/edit
  def edit
  end

  # POST /ai_helpers or /ai_helpers.json
  def create
    @ai_helper = AiHelper.new(ai_helper_params)

    respond_to do |format|
      if @ai_helper.save
        format.html { redirect_to ai_helper_url(@ai_helper), notice: "Ai helper was successfully created." }
        format.json { render :show, status: :created, location: @ai_helper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ai_helper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ai_helpers/1 or /ai_helpers/1.json
  def update
    respond_to do |format|
      if @ai_helper.update(ai_helper_params)
        format.html { redirect_to ai_helper_url(@ai_helper), notice: "Ai helper was successfully updated." }
        format.json { render :show, status: :ok, location: @ai_helper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ai_helper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ai_helpers/1 or /ai_helpers/1.json
  def destroy
    @ai_helper.destroy

    respond_to do |format|
      format.html { redirect_to ai_helpers_url, notice: "Ai helper was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ai_helper
      @ai_helper = AiHelper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ai_helper_params
      params.require(:ai_helper).permit(:Name, :Helper_Type, :Twitter)
    end
end
