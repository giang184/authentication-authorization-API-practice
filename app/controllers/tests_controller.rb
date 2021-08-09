# require 'httparty'

class TestsController < ApplicationController
  before_action :authorize, only: [:secret]

  def secret
    testie = Test.new
    @result = testie.get_copyright
    render :test
  end

end