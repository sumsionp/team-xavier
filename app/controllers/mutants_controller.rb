class MutantsController < ApplicationController
  before_action :set_mutant, only: [:show, :edit, :update, :destroy]

  # GET /mutants
  # GET /mutants.json
  def index
    @mutants = Mutant.all
  end

  # GET /mutants/1
  # GET /mutants/1.json
  def show
  end

  # GET /mutants/new
  def new
    @mutant = Mutant.new
  end

  # GET /mutants/1/edit
  def edit
  end

  # POST /mutants
  # POST /mutants.json
  def create
    @mutant = Mutant.new(mutant_params)

    respond_to do |format|
      if @mutant.save
        format.html { redirect_to @mutant, notice: 'Mutant was successfully created.' }
        format.json { render :show, status: :created, location: @mutant }
      else
        format.html { render :new }
        format.json { render json: @mutant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mutants/1
  # PATCH/PUT /mutants/1.json
  def update
    respond_to do |format|
      if @mutant.update(mutant_params)
        format.html { redirect_to @mutant, notice: 'Mutant was successfully updated.' }
        format.json { render :show, status: :ok, location: @mutant }
      else
        format.html { render :edit }
        format.json { render json: @mutant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mutants/1
  # DELETE /mutants/1.json
  def destroy
    @mutant.destroy
    respond_to do |format|
      format.html { redirect_to mutants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mutant
      @mutant = Mutant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mutant_params
      params.require(:mutant).permit(:name, :power)
    end
end
