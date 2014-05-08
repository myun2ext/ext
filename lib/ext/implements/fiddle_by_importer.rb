require 'fiddle'

module Ext
  module Implements
    module FiddleByImporter
      extend Fiddle::Importer

      def self.library(name)
        dlload name
      end

      def self.declare(name, args, ret)
        args_to_s = args.join(',')
        extern '#{ret} #{name}(#{args_to_s})'
      end
    end
  end
end
