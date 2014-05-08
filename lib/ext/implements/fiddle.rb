require 'fiddle'

class ExtImplByFiddle
  extend Fiddle::Importer

  def self.library(name)
    dlload name
  end
end
