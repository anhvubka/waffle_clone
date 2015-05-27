class RepositoriesController < ApplicationController
require 'octokit'
  def show
  	@repo = Octokit::Repository.new(params[:id]) 
  	if @repo
    	@issues = Octokit.list_issues(@repo.slug)
    	@closed_issues = Octokit.list_issues(@repo.slug, state: 'closed')
  	end

  end

  def change
  	 render :text => "hello world!"
  end
end
