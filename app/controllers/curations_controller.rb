class CurationsController < ApplicationController
  before_action :set_curation, only: [:show, :edit, :update, :destroy]

  # GET /curations
  # GET /curations.json
  def index
    @curations = Curation.all
  end

  # GET /curations/1
  # GET /curations/1.json
  def show
    @videos = @curation.videos.all
    @c_tags = []
    @videos.each do |video|
      video.video_tags.each do |vtag|
        @c_tags.push(vtag.tag)
      end
    end

  end

  # GET /curations/new
  def new
    @curation = Curation.new
  end

  # GET /curations/1/edit
  def edit
  end

  # POST /curations
  # POST /curations.json
  def create
    @curation = Curation.new(curation_params)

    respond_to do |format|
      if @curation.save
        format.html { redirect_to @curation, notice: 'Curation was successfully created.' }
        format.json { render :show, status: :created, location: @curation }
      else
        format.html { render :new }
        format.json { render json: @curation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curations/1
  # PATCH/PUT /curations/1.json
  def update
    respond_to do |format|
      if @curation.update(curation_params)
        format.html { redirect_to @curation, notice: 'Curation was successfully updated.' }
        format.json { render :show, status: :ok, location: @curation }
      else
        format.html { render :edit }
        format.json { render json: @curation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curations/1
  # DELETE /curations/1.json
  def destroy
    @curation.destroy
    respond_to do |format|
      format.html { redirect_to curations_url, notice: 'Curation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curation
      @curation = Curation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curation_params
      params.require(:curation).permit(:user_id, :title, :description)
    end
end
