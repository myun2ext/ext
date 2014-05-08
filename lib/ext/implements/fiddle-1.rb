require 'fiddle'

class ExtImplByFiddle
  def self.library(name)
    @lib = Fiddle.dlopen(name)
  end
end
