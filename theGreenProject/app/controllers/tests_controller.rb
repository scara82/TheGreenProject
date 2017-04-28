class TestsController < ApplicationController
  def self_test
  end

  def self_test_result
    @test_self = Test.new
    @test_self.user_id = session[:id]
    @test_self.tot = (params[:q1]).to_i +(params[:q2]).to_i + (params[:q3]).to_i
    @score = Score.new
    @score.test_id = 1
    @score.user_id = session[:id]
    @score.Tot = @test_self.tot
      if @test_self.save && @score.save
        score_id = @score.id
        redirect_to "/tests/self_test_show/#{score_id}"
      else
        redirect_to "/"
      end
  end

  def self_test_show
    @score = Score.find(params[:id])
  end
end
