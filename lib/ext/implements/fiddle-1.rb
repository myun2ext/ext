require 'fiddle'

class ExtImplByFiddle
  def self.library(name)
    @lib = Fiddle.dlopen(name)
  end

  def self.function(name, args, ret)
  end
end
