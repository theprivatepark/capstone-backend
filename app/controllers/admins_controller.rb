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

  private
  
  def admin_params
    params.require(:admin).permit(:email, :password)
  end

end
