require 'test_helper'

class WhatFunctionsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:what_functions)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_what_function
    assert_difference('WhatFunction.count') do
      post :create, :what_function => { }
    end

    assert_redirected_to what_function_path(assigns(:what_function))
  end

  def test_should_show_what_function
    get :show, :id => what_functions(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => what_functions(:one).id
    assert_response :success
  end

  def test_should_update_what_function
    put :update, :id => what_functions(:one).id, :what_function => { }
    assert_redirected_to what_function_path(assigns(:what_function))
  end

  def test_should_destroy_what_function
    assert_difference('WhatFunction.count', -1) do
      delete :destroy, :id => what_functions(:one).id
    end

    assert_redirected_to what_functions_path
  end
end
