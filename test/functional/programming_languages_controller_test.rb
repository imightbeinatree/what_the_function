require 'test_helper'

class ProgrammingLanguagesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:programming_languages)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_programming_language
    assert_difference('ProgrammingLanguage.count') do
      post :create, :programming_language => { }
    end

    assert_redirected_to programming_language_path(assigns(:programming_language))
  end

  def test_should_show_programming_language
    get :show, :id => programming_languages(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => programming_languages(:one).id
    assert_response :success
  end

  def test_should_update_programming_language
    put :update, :id => programming_languages(:one).id, :programming_language => { }
    assert_redirected_to programming_language_path(assigns(:programming_language))
  end

  def test_should_destroy_programming_language
    assert_difference('ProgrammingLanguage.count', -1) do
      delete :destroy, :id => programming_languages(:one).id
    end

    assert_redirected_to programming_languages_path
  end
end
