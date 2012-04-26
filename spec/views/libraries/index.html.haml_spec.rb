require 'spec_helper'

describe "libraries/index" do
  before(:each) do
    assign(:libraries, [
      stub_model(Library,
        :github_repo => "Github Repo"
      ),
      stub_model(Library,
        :github_repo => "Github Repo"
      )
    ])
  end

  it "renders a list of libraries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Github Repo".to_s, :count => 2
  end
end
