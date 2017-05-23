class TestsController < ApplicationController
  def self_test
  end

  def self_test_result
    @test_self = Test.new
    @test_self.user_id = session[:user_id]
    @test_self.tot = (params[:q1]).to_i + (params[:q2]).to_i + (params[:q3]).to_i
    @score = Score.new
    @score.test_id = params[:test_id]
    @score.user_id = session[:user_id]
    @score.Tot = @test_self.tot
      if @test_self.save && @score.save
        score_id = @score.id
        redirect_to "/tests/self_test_show/#{score_id}"
      else
        redirect_to "/"
      end
  end

  def home
  end

  def home_test_result
    @test_home = Test.new
    @test_home.user_id = session[:user_id]
    @test_home.tot = (params[:q4]).to_i + (params[:q5]).to_i + (params[:q6]).to_i + (params[:q6b]).to_i
    @score = Score.new
    @score.test_id = params[:test_id]
    @score.user_id = session[:user_id]
    @score.Tot = @test_home.tot
      if @test_home.save && @score.save
        score_id = @score.id
        redirect_to "/tests/self_test_show/#{score_id}"
      else
        redirect_to "/"
      end
  end

  def prod_test_result
    @test_prod = Test.new
    @test_prod.user_id = session[:user_id]
    @test_prod.tot = (params[:q7]).to_i + (params[:q8]).to_i + (params[:q9]).to_i
    @score = Score.new
    @score.test_id = params[:test_id]
    @score.user_id = session[:user_id]
    @score.Tot = @test_prod.tot
      if @test_prod.save && @score.save
        score_id = @score.id
        redirect_to "/tests/self_test_show/#{score_id}"
      else
        redirect_to "/"
      end
  end

  def transp_test_result
    @test_transp = Test.new
    @test_transp.user_id = session[:user_id]
    @test_transp.tot = (params[:q10]).to_i + (params[:q11]).to_i + (params[:q12]).to_i
    @score = Score.new
    @score.test_id = params[:test_id]
    @score.user_id = session[:user_id]
    @score.Tot = @test_transp.tot
      if @test_transp.save && @score.save
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
