require "test_helper"

describe CelebrationsController do

  before do
    @celebration = celebrations(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:celebrations)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create celebration" do
    assert_difference('Celebration.count') do
      post :create, celebration: {  }
    end

    assert_redirected_to celebration_path(assigns(:celebration))
  end

  it "must show celebration" do
    get :show, id: @celebration
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @celebration
    assert_response :success
  end

  it "must update celebration" do
    put :update, id: @celebration, celebration: {  }
    assert_redirected_to celebration_path(assigns(:celebration))
  end

  it "must destroy celebration" do
    assert_difference('Celebration.count', -1) do
      delete :destroy, id: @celebration
    end

    assert_redirected_to celebrations_path
  end

end
