class ProvidersController < ApplicationController
  before_action :set_provider, only: [:update, :destroy]
  # before_action :authorize_user, except: [:login, :create, :index]

  # POST /providers/userId
  def userId
    puts '------ POST /providers/userId -------'
    puts 'params[:user_id] = ' + params[:user_id].to_s
    @providers = Provider.where(:user_id => params[:user_id])
    render json: @providers
  end


  # GET /providers
  def index
    @providers = Provider.all

    render json: @providers
  end

  # GET /providers/1
  def show
    render json: @provider
  end

  # POST /providers
  def create
    puts '------------ POST /providers create ---------------'
    # puts 'provider_params = ' + provider_params.to_s
    @provider = Provider.new(provider_params)

    if @provider.save
      render json: @provider, status: :created, location: @provider
    else
      render json: @provider.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /providers/1
  def update
    if @provider.update(provider_params)
      render json: @provider
    else
      render json: @provider.errors, status: :unprocessable_entity
    end
  end

  # DELETE /providers/1
  def destroy
    @provider.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      puts 'SET_PROVIDER PARAMS[:ID] = ' + params[:id].to_s
      @provider = Provider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def provider_params
      params.require(:provider).permit(:name, :category, :cell_phone, :available, :company, :address, :url, :user_id, :vetted)
      # params.require(:provider).require(:user_id)
    end
end
