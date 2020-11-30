class ScoresController < ApplicationController
  def index
    @scores = Score.all.order(score: :DESC)
  end

  def new
    @score = Score.new
  end

  def create
    @score = Score.new(score_params)
    if @score.save
      redirect_to root_path
    else 
      render :new
    end  
  end

  def show
    @score = Score.find(params[:id])
    @comment = Comment.create
    @comments = Comment.all
   
  end  

  def edit
    @score = Score.find(params[:id])
  end
  
  def update
    @score = Score.find(params[:id])
    if @score.update(score_params)
      redirect_to score_path(@score.id)
    else
      render :edit
    end  
  end 
  
  def destroy
    @score = Score.find(params[:id])
    @score.destroy
    redirect_to root_path
  end  



  private

   def score_params
    params.require(:score).permit(:title, :score, :ranking, :image).merge(user_id: current_user.id)
   end

  end