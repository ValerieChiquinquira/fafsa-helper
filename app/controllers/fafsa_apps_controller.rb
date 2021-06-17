class FafsaAppsController < ApplicationController
  before_action :set_fafsa_app, only: %i[ show edit update destroy ]

  # GET /fafsa_apps or /fafsa_apps.json
  def index
    @fafsa_apps = FafsaApp.all
   
  end

  # GET /fafsa_apps/1 or /fafsa_apps/1.json
  def show
  
    @fafsa_app = FafsaApp.find(params[:id])
    id = @fafsa_app.user_id
    @user = User.find_by id: id
  
  
    @fafsa_apps = FafsaApp.all
  end

  #check for prequalification
  def check
    @fafsa_app = FafsaApp.find(params[:id])

   
  end

  def submit
    @fafsa_apps = FafsaApp.all
    @fafsa_app = FafsaApp.find(params[:id])
    id = @fafsa_app.user_id
    @user = User.find_by id: id
    @user.dob = @user.dob.to_s.unpack('A4xA2xA2').rotate.join('/')

    

  end



  # GET /fafsa_apps/new
  def new
    @fafsa_app = FafsaApp.new
  end

  # GET /fafsa_apps/1/edit
  def edit
  end

  # POST /fafsa_apps or /fafsa_apps.json
  def create
    @fafsa_app = FafsaApp.new(fafsa_app_params)
   

    respond_to do |format|
      if @fafsa_app.save
      
        format.html { redirect_to @fafsa_app , notice: "Fafsa app was successfully created." }
        format.json { render :check, status: :created, location: @fafsa_app  }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fafsa_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fafsa_apps/1 or /fafsa_apps/1.json
  def update
    respond_to do |format|
      if @fafsa_app.update(fafsa_app_params)
        format.html { redirect_to @fafsa_app, notice: "Fafsa app was successfully updated." }
        format.json { render :show, status: :ok, location: @fafsa_app }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fafsa_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fafsa_apps/1 or /fafsa_apps/1.json
  def destroy
    @fafsa_app.destroy
    respond_to do |format|
      format.html { redirect_to fafsa_apps_url, notice: "Fafsa app was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fafsa_app
      @fafsa_app = FafsaApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fafsa_app_params
      
      params.require(:fafsa_app).permit(:mid_init,:drivers_license,:high_school_name, :high_school_city, :high_school_state, :housing_plans, :dep, :kids, :married, :drivers_license_st,  :foster_care, :work_study, :drivers_license_num, :high_school, :citizen, :alien_num, :conviction, :parent_edu, :parent_edu2, :receive_aid, :application_year, :current_grade, :bachelors, :degree_applied, :user_id)
    end
end
