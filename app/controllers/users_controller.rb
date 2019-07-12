class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :destroy]

  def index
    session[:user_id] = nil
    @users = User.all
    random_shakes = ApiService.shakespeare
    @title = random_shakes["title"]
    @lines_array = random_shakes["lines"]
  end

  def show
    if (session[:user_id])
      @poems = Poem.all
    end
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to user_path(@user), notice: "User was successfully created." }
      else
        format.html { render :new }
      end
    end
  end

  # def update
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       format.html { redirect_to @user, notice: "User was successfully updated." }
  #     else
  #       format.html { render :edit }
  #     end
  #   end
  # end

  def destroy
    UserWord.where(user_id: @user.id).destroy_all
    UserPoem.where(user_id: @user.id).destroy_all
    @user.destroy
    session[:user_id] = nil
    respond_to do |format|
      format.html { redirect_to users_path, notice: "User was successfully destroyed." }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end
end
