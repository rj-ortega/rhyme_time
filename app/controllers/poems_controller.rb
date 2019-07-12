class PoemsController < ApplicationController
  before_action :set_poem, only: [:edit, :update, :destroy]

  def index
    @poems = Poem.all
  end

  def new
    @poem = Poem.new
  end

  def edit
  end

  def create
    @poem = Poem.new(poem_params)
    UserPoem.create(poem: @poem, user: @user)

    respond_to do |format|
      if @poem.save
        format.html { redirect_to user_path(@user), notice: "Poem was successfully created." }
      else
        format.html { render :new, notice: "Poem must have a title" }
      end
    end
  end

  def update
    respond_to do |format|
      if @poem.update(poem_params)
        format.html { redirect_to user_path(@user), notice: "Poem was successfully updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    UserPoem.find_by(poem_id: @poem.id).destroy
    respond_to do |format|
      format.html { redirect_to user_path(@user), notice: "Poem was successfully deleted." }
    end
  end

  private

  def set_poem
    @poem = Poem.find(params[:id])
  end

  def poem_params
    params.require(:poem).permit(:title, :poem)
  end
end
