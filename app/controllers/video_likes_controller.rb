class VideoLikesController < ApplicationController
  before_action :set_video_like, only: [:show, :edit, :update, :destroy]

  # GET /video_likes
  # GET /video_likes.json
  def index
    @video_likes = VideoLike.all
  end

  # GET /video_likes/1
  # GET /video_likes/1.json
  def show
  end

  # GET /video_likes/new
  def new
    @video_like = VideoLike.new
  end

  # GET /video_likes/1/edit
  def edit
  end

  # POST /video_likes
  # POST /video_likes.json
  def create
    @video_like = VideoLike.new(video_like_params)

    respond_to do |format|
      if @video_like.save
        format.html { redirect_to @video_like, notice: 'Video like was successfully created.' }
        format.json { render :show, status: :created, location: @video_like }
      else
        format.html { render :new }
        format.json { render json: @video_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_likes/1
  # PATCH/PUT /video_likes/1.json
  def update
    respond_to do |format|
      if @video_like.update(video_like_params)
        format.html { redirect_to @video_like, notice: 'Video like was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_like }
      else
        format.html { render :edit }
        format.json { render json: @video_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_likes/1
  # DELETE /video_likes/1.json
  def destroy
    @video_like.destroy
    respond_to do |format|
      format.html { redirect_to video_likes_url, notice: 'Video like was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_like
      @video_like = VideoLike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_like_params
      params.require(:video_like).permit(:video_id, :user_id)
    end
end
