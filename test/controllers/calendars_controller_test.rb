require "test_helper"

describe CalendarsController do

  before do
    @calendar = calendars(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calendars)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create calendar" do
    assert_difference('Calendar.count') do
      post :create, calendar: {  }
    end

    assert_redirected_to calendar_path(assigns(:calendar))
  end

  it "must show calendar" do
    get :show, id: @calendar
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @calendar
    assert_response :success
  end

  it "must update calendar" do
    put :update, id: @calendar, calendar: {  }
    assert_redirected_to calendar_path(assigns(:calendar))
  end

  it "must destroy calendar" do
    assert_difference('Calendar.count', -1) do
      delete :destroy, id: @calendar
    end

    assert_redirected_to calendars_path
  end

end
