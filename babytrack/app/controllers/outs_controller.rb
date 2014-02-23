class OutsController < ApplicationController
  before_action :set_out, only: [:show, :edit, :update, :destroy]

  # GET /outs
  # GET /outs.json
  def index
    @outs = Out.all
  end

  # GET /outs/1
  # GET /outs/1.json
  def show
  end

  # GET /outs/new
  def new
    @out = Out.new
  end

  # GET /outs/1/edit
  def edit
  end

  # POST /outs
  # POST /outs.json
  def create
    @out = Out.new(out_params)

    respond_to do |format|
      if @out.save
        format.html { redirect_to @out, notice: 'Out was successfully created.' }
        format.json { render action: 'show', status: :created, location: @out }
      else
        format.html { render action: 'new' }
        format.json { render json: @out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outs/1
  # PATCH/PUT /outs/1.json
  def update
    respond_to do |format|
      if @out.update(out_params)
        format.html { redirect_to @out, notice: 'Out was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outs/1
  # DELETE /outs/1.json
  def destroy
    @out.destroy
    respond_to do |format|
      format.html { redirect_to outs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_out
      @out = Out.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def out_params
      params.require(:out).permit(:kind, :descrp)
    end
end
