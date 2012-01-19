require "spec_helper"

describe BooksController do
  render_views

  describe "GET index" do
    it "says 'Listing books'" do
      get :index
      response.body.should =~ /Listing books/m
    end
  end
end

