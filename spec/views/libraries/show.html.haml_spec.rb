require 'spec_helper'

describe "libraries/show" do
  before(:each) do
    @library = assign(:library, stub_model(Library,
      :github_repo => "Github Repo"
    ))
  end

  pending it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Github Repo/)
  end
end
