require 'spec_helper'

describe Library do
  describe "#get_repos" do
    before do
    stub_request(:get, "https://api.github.com/repos/codeforamerica/cfahelloworld").
      to_return(:status => 200, :body => fixture("repo.json"), :headers => {})
    end

    it "should return the hashie mash of the repo" do
      library = Library.new
      result = library.get_repo("cfahelloworld")
      result.description.should == "Hello World Training"
    end
  end
end
