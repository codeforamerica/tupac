class Library < ActiveRecord::Base
  attr_accessible :github_repo, :language_list, :description
  acts_as_taggable
  acts_as_taggable_on :languages

  before_save :add_description

  def get_repo(repo)
    octokit_client.repository("codeforamerica/#{repo}")
  end

  def add_description
    client = octokit_client.repository("codeforamerica/#{self.github_repo}")
    self.description = client.description
  end

  protected

  def octokit_client
    client = Octokit::Client.new(:login => 'codeforamerica')
    octokit_client ||= client
  end

end
