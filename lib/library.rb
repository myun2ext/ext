if RUBY_VERSION.to_f >= 2.0
  require './lib/ext/implements/fiddle_by_importer'
end

module Library
  if RUBY_VERSION.to_f >= 2.0
    include Ext::Implements::FiddleByImporter
  end
end
