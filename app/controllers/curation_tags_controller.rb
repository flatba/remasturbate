class CurationTagsController < ApplicationController
  before_action :set_curation_tag, only: [:show, :edit, :update, :destroy]

  # GET /curation_tags
  # GET /curation_tags.json
  def index
    @curation_tags = CurationTag.all
  end

  # GET /curation_tags/1
  # GET /curation_tags/1.json
  def show
  end

  # GET /curation_tags/new
  def new
    @curation_tag = CurationTag.new
  end

  # GET /curation_tags/1/edit
  def edit
  end

  # POST /curation_tags
  # POST /curation_tags.json
  def create
    @curation_tag = CurationTag.new(curation_tag_params)

    respond_to do |format|
      if @curation_tag.save
        format.html { redirect_to @curation_tag, notice: 'Curation tag was successfully created.' }
        format.json { render :show, status: :created, location: @curation_tag }
      else
        format.html { render :new }
        format.json { render json: @curation_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curation_tags/1
  # PATCH/PUT /curation_tags/1.json
  def update
    respond_to do |format|
      if @curation_tag.update(curation_tag_params)
        format.html { redirect_to @curation_tag, notice: 'Curation tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @curation_tag }
      else
        format.html { render :edit }
        format.json { render json: @curation_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curation_tags/1
  # DELETE /curation_tags/1.json
  def destroy
    @curation_tag.destroy
    respond_to do |format|
      format.html { redirect_to curation_tags_url, notice: 'Curation tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curation_tag
      @curation_tag = CurationTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curation_tag_params
      params.require(:curation_tag).permit(:tag_id, :curation_id)
    end
end
