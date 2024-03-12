class TerefasController < ApplicationController
  # before_action :set_terefa, only: %i[ show edit update destroy ]

  # GET /terefas or /terefas.json
  def index
    @terefas = Terefa.all
  end

  # GET /terefas/1 or /terefas/1.json
  def show
  end

  # GET /terefas/new
  def new
    @terefa = Terefa.new
  end

  # GET /terefas/1/edit
  def edit
  end

  # POST /terefas or /terefas.json
  def create
    @terefa = Terefa.new(terefa_params)

    respond_to do |format|
      if @terefa.save
        format.html { redirect_to terefa_url(@terefa), notice: "Terefa was successfully created." }
        format.json { render :show, status: :created, location: @terefa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @terefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terefas/1 or /terefas/1.json
  def update
    respond_to do |format|
      if @terefa.update(terefa_params)
        format.html { redirect_to terefa_url(@terefa), notice: "Terefa was successfully updated." }
        format.json { render :show, status: :ok, location: @terefa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @terefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terefas/1 or /terefas/1.json
  def destroy
    @terefa.destroy!

    respond_to do |format|
      format.html { redirect_to terefas_url, notice: "Terefa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terefa
      @terefa = Terefa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def terefa_params
      params.require(:terefa).permit(:title, :description, :user_id)
    end
end
