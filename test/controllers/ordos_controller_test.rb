require "test_helper"

describe OrdosController do

  before do
    @ordo = ordos(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordos)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create ordo" do
    assert_difference('Ordo.count') do
      post :create, ordo: {  }
    end

    assert_redirected_to ordo_path(assigns(:ordo))
  end

  it "must show ordo" do
    get :show, id: @ordo
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @ordo
    assert_response :success
  end

  it "must update ordo" do
    put :update, id: @ordo, ordo: {  }
    assert_redirected_to ordo_path(assigns(:ordo))
  end

  it "must destroy ordo" do
    assert_difference('Ordo.count', -1) do
      delete :destroy, id: @ordo
    end

    assert_redirected_to ordos_path
  end

end
