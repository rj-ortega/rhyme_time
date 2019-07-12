class WordsController < ApplicationController
  before_action :set_word, only: :destroy

  def new
    @word = Word.new 
  end

  def index
    #need this action or website will break
  end

  def create
    @word = Word.new(word_params)
    UserWord.create(word: @word, user: @user)

    respond_to do |format|
      if @word.save
        format.html { redirect_to user_path(@user), notice: "Word was successfully created." }
        
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    UserWord.find_by(word_id: @word.id).destroy
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
