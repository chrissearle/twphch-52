# coding: UTF-8

require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
end
