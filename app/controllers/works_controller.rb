class WorksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_work, only: %i[ show edit update destroy ]

  # GET /works or /works.json
  def index
    @works = Work.all
  end

  # GET /works/1 or /works/1.json
  def show
    @work = Work.find(params[:id])
  end

  # GET /works/new
  def new
    @work = Work.new
  end

  # GET /works/1/edit
  def edit
    @work = Work.find(params[:id])
  end

  # POST /works or /works.json
  def create
      @work = current_user.works.build(work_params)

      respond_to do |format|
        if @work.save
          format.html { redirect_to work_url(@work), notice: "El cargo fue creado con éxito." }
          format.json { render :show, status: :created, location: @work }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @work.errors, status: :unprocessable_entity }
        end
      end
    end
   
  

  # PATCH/PUT /works/1 or /works/1.json
  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to @work
    else
      render :edit
    end
  end

  # DELETE /works/1 or /works/1.json
  def destroy
    work = Work.find(params[:id])
    work.destroy

    flash[:notice] = "El libro ha sido eliminado exitosamente"
    redirect_to works_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_params
      params.require(:work).permit(:cargo, :cantidad_vacantes, :description, :modalidad, :release_date, :rango_salarial, :region )
    end
  end