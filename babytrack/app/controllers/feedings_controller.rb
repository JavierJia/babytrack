class FeedingsController < ApplicationController
  before_action :set_feeding, only: [:show, :edit, :update, :destroy]

  # GET /feedings
  # GET /feedings.json
  def index
    @feedings = Feeding.all
  end

  # GET /feedings/1
  # GET /feedings/1.json
  def show
  end

  # GET /feedings/new
  def new
    @feeding = Feeding.new
  end

  # GET /feedings/1/edit
  def edit
  end

  # POST /feedings
  # POST /feedings.json
  def create
    @feeding = Feeding.new(feeding_params)

    respond_to do |format|
      if @feeding.save
        format.html { redirect_to @feeding, notice: 'Feeding was successfully created.' }
        format.json { render action: 'show', status: :created, location: @feeding }
      else
        format.html { render action: 'new' }
        format.json { render json: @feeding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feedings/1
  # PATCH/PUT /feedings/1.json
  def update
    respond_to do |format|
      if @feeding.update(feeding_params)
        format.html { redirect_to @feeding, notice: 'Feeding was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @feeding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedings/1
  # DELETE /feedings/1.json
  def destroy
    @feeding.destroy
    respond_to do |format|
      format.html { redirect_to feedings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feeding
      @feeding = Feeding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feeding_params
      params.require(:feeding).permit(:kind, :volumn)
    end
end
