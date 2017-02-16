class CurationCommentsController < ApplicationController
  before_action :set_curation_comment, only: [:show, :edit, :update, :destroy]

  # GET /curation_comments
  # GET /curation_comments.json
  def index
    @curation_comments = CurationComment.all
  end

  # GET /curation_comments/1
  # GET /curation_comments/1.json
  def show
  end

  # GET /curation_comments/new
  def new
    @curation_comment = CurationComment.new
  end

  # GET /curation_comments/1/edit
  def edit
  end

  # POST /curation_comments
  # POST /curation_comments.json
  def create
    @curation_comment = CurationComment.new(curation_comment_params)

    respond_to do |format|
      if @curation_comment.save
        format.html { redirect_to @curation_comment, notice: 'Curation comment was successfully created.' }
        format.json { render :show, status: :created, location: @curation_comment }
      else
        format.html { render :new }
        format.json { render json: @curation_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curation_comments/1
  # PATCH/PUT /curation_comments/1.json
  def update
    respond_to do |format|
      if @curation_comment.update(curation_comment_params)
        format.html { redirect_to @curation_comment, notice: 'Curation comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @curation_comment }
      else
        format.html { render :edit }
        format.json { render json: @curation_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curation_comments/1
  # DELETE /curation_comments/1.json
  def destroy
    @curation_comment.destroy
    respond_to do |format|
      format.html { redirect_to curation_comments_url, notice: 'Curation comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curation_comment
      @curation_comment = CurationComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curation_comment_params
      params.require(:curation_comment).permit(:curation_id, :user_id, :comment)
    end
end
