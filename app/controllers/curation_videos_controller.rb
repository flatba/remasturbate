class CurationVideosController < ApplicationController
  before_action :set_curation_video, only: [:show, :edit, :update, :destroy]

  # GET /curation_videos
  # GET /curation_videos.json
  def index
    @curation_videos = CurationVideo.all
  end

  # GET /curation_videos/1
  # GET /curation_videos/1.json
  def show
  end

  # GET /curation_videos/new
  def new
    @curation_video = CurationVideo.new
  end

  # GET /curation_videos/1/edit
  def edit
  end

  # POST /curation_videos
  # POST /curation_videos.json
  def create
    @curation_video = CurationVideo.new(curation_video_params)

    respond_to do |format|
      if @curation_video.save
        format.html { redirect_to @curation_video, notice: 'Curation video was successfully created.' }
        format.json { render :show, status: :created, location: @curation_video }
      else
        format.html { render :new }
        format.json { render json: @curation_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curation_videos/1
  # PATCH/PUT /curation_videos/1.json
  def update
    respond_to do |format|
      if @curation_video.update(curation_video_params)
        format.html { redirect_to @curation_video, notice: 'Curation video was successfully updated.' }
        format.json { render :show, status: :ok, location: @curation_video }
      else
        format.html { render :edit }
        format.json { render json: @curation_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curation_videos/1
  # DELETE /curation_videos/1.json
  def destroy
    @curation_video.destroy
    respond_to do |format|
      format.html { redirect_to curation_videos_url, notice: 'Curation video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curation_video
      @curation_video = CurationVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curation_video_params
      params.require(:curation_video).permit(:curation_id, :video_id)
    end
end
