require 'fiddle'
require 'fiddle/import'

module Ext
  module Implements
    module FiddleByImporter
      include Fiddle::Importer

      def library(name)
        self.dlload name
      end

      def declare(name, args, ret)
        args_to_s = args.join(',')
        self.extern "#{ret} #{name}(#{args_to_s})"
      end
    end
  end
end
