class ReportersController < ApplicationController
  before_action :set_reporter, only: %i[ show edit update destroy ]

  # GET /reporters or /reporters.json
  def index
    @reporters = Reporter.all
  end

  # GET /reporters/1 or /reporters/1.json
  def show
  end

  # GET /reporters/new
  def new
    @reporter = Reporter.new
  end

  # GET /reporters/1/edit
  def edit
  end

  # POST /reporters or /reporters.json
  def create
    @reporter = Reporter.new(reporter_params)

    respond_to do |format|
      if @reporter.save
        format.html { redirect_to reporter_url(@reporter), notice: "Reporter was successfully created." }
        format.json { render :show, status: :created, location: @reporter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reporter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reporters/1 or /reporters/1.json
  def update
    respond_to do |format|
      if @reporter.update(reporter_params)
        format.html { redirect_to reporter_url(@reporter), notice: "Reporter was successfully updated." }
        format.json { render :show, status: :ok, location: @reporter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reporter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reporters/1 or /reporters/1.json
  def destroy
    @reporter.destroy

    respond_to do |format|
      format.html { redirect_to reporters_url, notice: "Reporter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reporter
      @reporter = Reporter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reporter_params
      params.require(:reporter).permit(:name, :furigana, :medium_id, :desirability)
    end
end
