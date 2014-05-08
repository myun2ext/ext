require 'fiddle'

class ExtImplByFiddle
  def self.library(name)
    @lib = Fiddle.dlopen(name)
  end

  def self.function(name, args, ret)
    args_to_s = args.join(',')
    extern '#{ret} #{name}(#{args_to_s})'
  end
end
