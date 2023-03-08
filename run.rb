require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'octokit', '~> 5.0'
  gem 'pry-byebug'
end

require 'json'

client = Octokit::Client.new(access_token: ENV['ACCESS_TOKEN'])
username = client.user[:login]

client.auto_paginate = true
raw_repos = client.repos
puts "--> Fetch repos count #{raw_repos.count}"

items = raw_repos.filter_map do |repo|
  next unless repo[:html_url].index(username)

  {
    arg: repo[:html_url],
    uid: repo[:id],
    title: repo[:name],
    subtitle: repo[:description]
  }
end
puts "--> Filter with only my repos: #{items.count}"
repos = { items: }

file = 'github-repos.json'
File.write(file, JSON.dump(repos))
puts "--> Dump to #{file}"
