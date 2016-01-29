require 'thor'
require 'byebug'
require 'looksee'

module Gitrash
  class Cli < Thor
    desc 'clean-merged', 'Remove remote branches that have been merged to master'
    def clean_merged
      git_runner = GitRunner.new
      byebug
      puts "end"
    end

  end
end