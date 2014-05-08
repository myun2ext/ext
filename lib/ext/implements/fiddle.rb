require 'fiddle'

class ExtImplByFiddle
  extend Fiddle::Importer

  def self.library(name)
    dlload name
  end

  def self.declare(name, args, ret)
  end
end
