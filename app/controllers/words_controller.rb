class WordsController < ApplicationController
  before_action :set_word, only: :destroy

  def new
    @word = Word.new 
  end

  def index
    #need this action
  end

  def create
    @word = Word.new(word_params)

    respond_to do |format|
      if @word.save
        format.html { redirect_to @user, notice: "Word was successfully created." }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @word.destroy
    respond_to do |format|
      format.html { redirect_to user_path(@user), notice: "Word was successfully deleted." }
    end
  end

  private

  def set_word
    @word = Word.find(params[:id])
  end

  def word_params
    params.require(:word).permit(:name)
  end
end
