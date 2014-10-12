class HypothesesController < ApplicationController
  before_action :set_hypothesis, only: [:show, :edit, :update, :destroy]

  def index
    @hypotheses = Hypothesis.all
  end

  def show
  end

  def new
    @hypothesis = Hypothesis.new
  end

  def edit
  end

  def create
    @hypothesis = Hypothesis.new(hypothesis_params)  
    if @hypothesis.save
      redirect_to @hypothesis, notice: 'Hypothesis was successfully created.'
    else
      render :new
    end
  end

  def update
    if @hypothesis.update(hypothesis_params)
      redirect_to @hypothesis, notice: 'Hypothesis was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @hypothesis.destroy
    redirect_to hypotheses_url, notice: 'Hypothesis was successfully destroyed.'
  end

  private

    def set_hypothesis
      @hypothesis = Hypothesis.find(params[:id])
    end

    def hypothesis_params
      params.require(:hypothesis).permit(:name)
    end
end
