class Library < ActiveRecord::Base
  attr_accessible :github_repo, :language_list
  acts_as_taggable
  acts_as_taggable_on :languages

  def get_repo(repo)
    octokit_client.repository("codeforamerica/#{repo}")
  end

  protected

  def octokit_client
    client = Octokit::Client.new(:login => 'codeforamerica')
    octokit_client ||= client
  end

end
