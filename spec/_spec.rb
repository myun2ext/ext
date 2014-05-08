require './lib/ext/implements/fiddle_by_importer'

describe { it {

class User32
  extend Ext::Implements::FiddleByImporter

  library "user32"
  declare "MessageBox", ["void*", "const char*", "const char*", "int"], "int"
end

}}
