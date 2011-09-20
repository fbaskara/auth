class UsersController < ApplicationController
  def new
    puts '[UsersController] new'
    @user = User.new
  end

  def create
    puts '[UsersController] create'
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
end
