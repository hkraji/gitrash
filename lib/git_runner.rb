require 'git'

module Gitrash
  class GitRunner

    attr_accessor :git_repo

    def initialize
      raise "Not able to find git repository in your current directory #{current_directory_git}" unless File.directory?(current_directory_git)
      @git_repo = Git.init(current_directory)
    end

  private
    def current_directory
      Dir.pwd
    end

    def current_directory_git
      File.join(current_directory, '.git')
    end
  end
end