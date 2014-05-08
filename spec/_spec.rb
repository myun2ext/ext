require './lib/library'

describe { it {

module User32
  extend Library

  library "user32"
  declare "MessageBox", ["void*", "const char*", "const char*", "int"], "int"
end

User32.MessageBox(nil, "aa", "bb", 0)
}}
