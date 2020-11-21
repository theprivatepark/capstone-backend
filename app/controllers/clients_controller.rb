class ClientsController < ApplicationController

  def index
    @clients = Client.all
    render :json => @clients
  end
  
  def show
    event = Client.find(params[:id])
    if @client #if there is a user
      render :json => @client
    else
      render json: {
        status: 500,
        errors: ['no such client found']
      }
    end
  end

  def new
  end

  def create
    @client = Client.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      password: params[:password],
      email: params[:email]
    )
  
    if @client.save #if event saves successfully
      render json: {
        event: @client,
        errors: false
      }
    else 
      render json: {
        errors: true,
        info: ["try again"]
      }
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    render json: @client
  end

end
