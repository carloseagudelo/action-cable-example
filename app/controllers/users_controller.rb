class UsersController < ApplicationController

  def create
  	if params[:username].present?
  	  if User.where(username: params[:username]).first.nil?
  	  	cookies['user_id'] =  User.create(username: params[:username]).id
  	  	redirect_to chatrooms_path
  	  else
  	  	cookies['user_id'] = User.select(:id).where(username: params[:username]).first.id
  	  	redirect_to chatrooms_path 
  	  end
  	else
      flash[:notice] = {error: "DEBE INGRESAR EL NOMBRE DE USUARIO"}
      redirect_to root_path
  	end
  end

end
