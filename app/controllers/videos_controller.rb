class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all
  end

  def insert_pv
    @popular = @video.populars.find_or_create_by(:date => Date.today, :term => 0)
    @popular.increment(:pageview)
  end

  def add_oneday_bookmark
    if current_user
      video_id = params[:id].to_i
      if current_user.bookmarks.find_by(video_id: video_id).present?
        current_user.bookmarks.destroy(video_id: video_id)
      else
        current_user.bookmarks.create(video_id: video_id)
      end
    else
      flash.now[:notice] = '1dayブックマークの利用にはログインが必要です'
    end
  end

  def oneday_bookmark
    @bookmarks = current_user.bookmarks.all
  end


  # GET /videos/1
  # GET /videos/1.json
  def show
    @comment = @video.video_comments.new
    insert_pv
  end

  #popularについて
  #まずは、その日移行で
  def popular_today
     #今日のpopularからやつを出す 
     @populars = Popular.where(:date => Date.today, :term => 0)
  end

  def popular_week
    #weekは過去7日間のやつを出す
    @populars = Popular.where(:date=> 1.weeks.ago..Time.now)
  end

  def popular_month
    #monthは過去1ヶ月間
    @populars = Popular.where(:date=> 1.months.ago..Time.now)
  end

  def popular
    #allは合算を出す
    @populars = Popular.all
  end


  

  # GET /videos/new
  def new
    @video = Video.new
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:url, :title, :description, :website, :user_id, :thumbnails)
    end
end
