class SessionsController < ApplicationController

  def index
    @sessions = Session.all
    render :json => @sessions
  end
  
  def show
    session = Session.find(params[:id])
    if @user #if there is a user
      render :json => @user
    else
      render json: {
        status: 500,
        errors: ['no such user found']
      }
    end
  end

  def new
  end

  def create
    @session = Session.new(
      client_id: params[:client_id],
      event_name: params[:event_name],
      location_name: params[:location_name],
      location_address: params[:location_address],
      date: params[:date],
      time: params[:time]
    )
    if @session.save #if session saves successfully
      render json: {
        session: @session,
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
    @session = Session.find(params[:id])
    @session.destroy
    render json: @session
  end

  private

  def session_params
    params.require(:session).permit(:event_name, :location_name, :location_address, :date, :time)
  end

end
