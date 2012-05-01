require 'spec_helper'

describe HomeHelper do
  before do
    stub_request(:get, "https://api.github.com/repos/codeforamerica/cfahelloworld").
      to_return(:status => 200, :body => fixture("repo.json"), :headers => {})

    @library = FactoryGirl.create(:library)
    @library.language_list = 'Ruby'
    @library.save
  end

  describe "#get_count" do
    it "should return the language count" do
      test = get_count('ruby')
      test.should == 1
    end
  end

end
