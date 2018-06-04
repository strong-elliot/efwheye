class TidbitsController < ApplicationController
  before_action :set_tidbit, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /tidbits
  # GET /tidbits.json
  def index
    @tidbits = Tidbit.all
  end

  # GET /tidbits/1
  # GET /tidbits/1.json
  def show
  end

  # GET /tidbits/new
  def new
    @tidbit = Tidbit.new
  end

  # GET /tidbits/1/edit
  def edit
  end

  # POST /tidbits
  # POST /tidbits.json
  def create
    @tidbit = Tidbit.new(tidbit_params)

    respond_to do |format|
      if @tidbit.save
        format.html { redirect_to @tidbit, notice: 'Tidbit was successfully created.' }
        format.json { render :show, status: :created, location: @tidbit }
      else
        format.html { render :new }
        format.json { render json: @tidbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tidbits/1
  # PATCH/PUT /tidbits/1.json
  def update
    respond_to do |format|
      if @tidbit.update(tidbit_params)
        format.html { redirect_to @tidbit, notice: 'Tidbit was successfully updated.' }
        format.json { render :show, status: :ok, location: @tidbit }
      else
        format.html { render :edit }
        format.json { render json: @tidbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tidbits/1
  # DELETE /tidbits/1.json
  def destroy
    @tidbit.destroy
    respond_to do |format|
      format.html { redirect_to tidbits_url, notice: 'Tidbit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tidbit
      @tidbit = Tidbit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tidbit_params
      params.require(:tidbit).permit(:body)
    end
end
