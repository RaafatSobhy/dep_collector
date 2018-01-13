require "dep_collector/version"

module DepCollector
  class DependencyCommand
    require 'rubygems/commands/dependency_command'

    def self.get_dependencies name, local = true
      cmd = Gem::Commands::DependencyCommand.new

      dependency = cmd.gem_dependency name, nil, nil

      specs =
          if local
            dependency.matching_specs.uniq.sort
          else
            cmd.fetch_remote_specs(dependency).uniq.sort
          end

      dependencies = []
      specs.each do |spec|
        dependencies.concat spec.dependencies.sort_by {|dep| dep.name}.map {|dep| [dep.name, dep.requirement]}
      end
      dependencies
    end
  end
end
