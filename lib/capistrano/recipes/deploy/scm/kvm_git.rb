require 'capistrano/recipes/deploy/scm/git'

module Capistrano
  module Deploy
    module SCM
      class KvmGit < Git
				def command
          "git"
        end

        def query_revision(revision)
          raise ArgumentError, "Deploying remote branches is no longer supported.  Specify the remote branch as a local branch for the git repository you're deploying from (ie: '#{revision.gsub('origin/', '')}' rather than '#{revision}')." if revision =~ /^origin\//
          return revision if revision =~ /^[0-9a-f]{40}$/

          command = scm('ls-remote', variable(:remote_repository), revision)
          result = yield(command)
          revdata = result.split(/[\t\n]/)
          newrev = nil
          revdata.each_slice(2) do |refs|
            rev, ref = *refs
            if ref.sub(/refs\/.*?\//, '').strip == revision.to_s
              newrev = rev
              break
            end
          end
          raise "Unable to resolve revision for '#{revision}' on repository '#{repository}'." unless newrev =~ /^[0-9a-f]{40}$/
          return newrev
        end 
      end
    end
  end
end
