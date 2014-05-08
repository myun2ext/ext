require './lib/ext/implements/fiddle_by_importer'

describe { it {

module User32
  extend Ext::Implements::FiddleByImporter

  library "user32"
  declare "MessageBox", ["void*", "const char*", "const char*", "int"], "int"
end

User32.MessageBox(nil, "aa", "bb", 0)
}}
