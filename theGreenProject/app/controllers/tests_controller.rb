class TestsController < ApplicationController
  def test_self
  end

  def test_self_result
    @test_self = Test.new
    @test_self.user_id = session[:id]
    @test_self.tot = (params[:q1]).to_i +(params[:q2]).to_i + (params[:q3]).to_i
    @score = Score.new
    @score.test_id = 1
    @score.user_id = session[:id]
    @score.Tot = @test_self.tot
      if @test_self.save && @score.save
        redirect_to '/tests/test_self_tot'
      else
        redirect_to "/"
      end
  end

  def test_self_tot
    @score = Score.find_by(user_id: session[:id])
  end
end
