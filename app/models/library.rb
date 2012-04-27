class Library < ActiveRecord::Base
  attr_accessible :github_repo

  protected

  def octokit_client
    client = Octokit::Client.new(:login => 'codeforamerica')
    octokit_client ||= client
  end

end
