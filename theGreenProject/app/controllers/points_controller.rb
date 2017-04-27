class PointsController < ApplicationController

  def test_self
  end

  def test_self_result
    @test_self = Point.new
    @test_self.q1 = session[:q1]
    @test_self.q2 = session[:q2]
    @test_self.q3 = session[:q3]
      if @test_self.save
        redirect_to '/home'
      else
        redirect_to "/"
      end
  end
end
