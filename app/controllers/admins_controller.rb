class AdminsController < ApplicationController

  def index
    @admins = Admin.all
    render :json => @admins
  end
  
  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      login!
      render json: {
        status: :created,
        admin: @admin
      }
    else 
      render json: {
        status: 500,
        errors: @admin.errors.full_messages
      }
    end
  end

  def login
    @admin = Admin.find_by(email: params[:email])
    if @admin && @admin.authenticate(params[:password])
      render json: {
        errors: false,
        info: @admin
      }
    else
      render json: {
        errors: true,
        info: "try again ho"
      }
    end

  end

  private
  
  def admin_params
    params.require(:admin).permit(:email, :password)
  end

end
