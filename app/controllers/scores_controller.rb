class ScoresController < ApplicationController

  def test_self
  end

  def test_self_result
    @test_self = Score.new
    @test_self.q1 = params[:q1]
    @test_self.q2 = params[:q2]
    @test_self.q3 = @test_self.q1 + @test_self.q2 + (params[:q4]).to_i
      if @test_self.save
        redirect_to '/home'
      else
        redirect_to "/"
      end
  end

  def your_scores
    @your_scores_self = Score.where(user_id: session[:id], test_id: "1")
    @your_scores_house = Score.where(user_id: session[:id], test_id: "2")
    @your_scores_prod = Score.where(user_id: session[:id], test_id: "3")
    @your_scores_transp = Score.where(user_id: session[:id], test_id: "4")

  end
end
