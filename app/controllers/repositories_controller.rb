class RepositoriesController < ApplicationController
require 'octokit'
  def show
  	@repo = Octokit::Repository.new(params[:id]) 
  	if @repo
    	@issues = Octokit.list_issues(@repo.slug)
  	end
  end
end
