class VideoCommentsController < ApplicationController
  before_action :set_video_comment, only: [:show, :edit, :update, :destroy]

  # GET /video_comments
  # GET /video_comments.json
  def index
    @video_comments = VideoComment.all
  end

  # GET /video_comments/1
  # GET /video_comments/1.json
  def show
  end

  # GET /video_comments/new
  def new
    @video_comment = VideoComment.new
  end

  # GET /video_comments/1/edit
  def edit
  end

  # POST /video_comments
  # POST /video_comments.json
  def create
    @video_comment = VideoComment.new(video_comment_params)

    respond_to do |format|
      if @video_comment.save
        format.html { redirect_to controller: 'videos', action: 'show', id: params[:video_comment][:video_id] }
      else
        format.html { render :new }
        format.json { render json: @video_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_comments/1
  # PATCH/PUT /video_comments/1.json
  def update
    respond_to do |format|
      if @video_comment.update(video_comment_params)
        format.html { redirect_to @video_comment, notice: 'Video comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_comment }
      else
        format.html { render :edit }
        format.json { render json: @video_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_comments/1
  # DELETE /video_comments/1.json
  def destroy
    @video_comment.destroy
    respond_to do |format|
      format.html { redirect_to video_comments_url, notice: 'Video comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_comment
      @video_comment = VideoComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_comment_params
      params.require(:video_comment).permit(:video_id, :user_id, :comment)
    end
end
