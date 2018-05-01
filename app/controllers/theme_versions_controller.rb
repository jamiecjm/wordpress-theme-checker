class ThemeVersionsController < ApplicationController
  before_action :set_theme_version, only: [:show, :edit, :update, :destroy]

  # GET /theme_versions
  # GET /theme_versions.json
  def index
    @theme_versions = ThemeVersion.all
  end

  # GET /theme_versions/1
  # GET /theme_versions/1.json
  def show
  end

  # GET /theme_versions/new
  def new
    @theme_version = ThemeVersion.new
  end

  # GET /theme_versions/1/edit
  def edit
  end

  # POST /theme_versions
  # POST /theme_versions.json
  def create
    @theme_version = ThemeVersion.new(theme_version_params)

    respond_to do |format|
      if @theme_version.save
        format.html { redirect_to @theme_version, notice: 'Theme version was successfully created.' }
        format.json { render :show, status: :created, location: @theme_version }
      else
        format.html { render :new }
        format.json { render json: @theme_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theme_versions/1
  # PATCH/PUT /theme_versions/1.json
  def update
    respond_to do |format|
      if @theme_version.update(theme_version_params)
        format.html { redirect_to @theme_version, notice: 'Theme version was successfully updated.' }
        format.json { render :show, status: :ok, location: @theme_version }
      else
        format.html { render :edit }
        format.json { render json: @theme_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theme_versions/1
  # DELETE /theme_versions/1.json
  def destroy
    @theme_version.destroy
    respond_to do |format|
      format.html { redirect_to theme_versions_url, notice: 'Theme version was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme_version
      @theme_version = ThemeVersion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theme_version_params
      params.require(:theme_version).permit(:theme_id, :version, :details, :theme_file)
    end
end
