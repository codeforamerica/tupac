require 'spec_helper'

describe "libraries/index" do
  before(:each) do
    assign(:libraries, [
      stub_model(Library,
        :github_repo => "GithubRepo"
      ),
      stub_model(Library,
        :github_repo => "GithubRepo"
      )
    ])
   stub_request(:get, "https://api.github.com/repos/codeforamerica/GithubRepo").
      to_return(:status => 200, :body => fixture("repo.json"), :headers => {})
  end

  pending it "renders a list of libraries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "GithubRepo".to_s, :count => 2
  end
end
