require 'spec_helper'

describe IssuesController do
  render_views

  describe "GET 'rspec_title_problem'" do
    it "should be successful" do
      get 'rspec_title_problem'
      response.should be_success
    end

    it "should have the right title" do
      get 'rspec_title_problem'
      response.should have_selector("title", :content => "RSpec should see this")
    end
  end

end
