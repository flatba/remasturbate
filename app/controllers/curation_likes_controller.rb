class CurationLikesController < ApplicationController
  before_action :set_curation_like, only: [:show, :edit, :update, :destroy]

  # GET /curation_likes
  # GET /curation_likes.json
  def index
    @curation_likes = CurationLike.all
  end

  # GET /curation_likes/1
  # GET /curation_likes/1.json
  def show
  end

  # GET /curation_likes/new
  def new
    @curation_like = CurationLike.new
  end

  # GET /curation_likes/1/edit
  def edit
  end

  # POST /curation_likes
  # POST /curation_likes.json
  def create
    @curation_like = CurationLike.new(curation_like_params)

    respond_to do |format|
      if @curation_like.save
        format.html { redirect_to @curation_like, notice: 'Curation like was successfully created.' }
        format.json { render :show, status: :created, location: @curation_like }
      else
        format.html { render :new }
        format.json { render json: @curation_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curation_likes/1
  # PATCH/PUT /curation_likes/1.json
  def update
    respond_to do |format|
      if @curation_like.update(curation_like_params)
        format.html { redirect_to @curation_like, notice: 'Curation like was successfully updated.' }
        format.json { render :show, status: :ok, location: @curation_like }
      else
        format.html { render :edit }
        format.json { render json: @curation_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curation_likes/1
  # DELETE /curation_likes/1.json
  def destroy
    @curation_like.destroy
    respond_to do |format|
      format.html { redirect_to curation_likes_url, notice: 'Curation like was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curation_like
      @curation_like = CurationLike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curation_like_params
      params.require(:curation_like).permit(:user_id, :curation_id)
    end
end
