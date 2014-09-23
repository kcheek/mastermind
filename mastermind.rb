lib_pattern = File.expand_path '../lib/*.rb', __FILE__
Dir[lib_pattern].each { |file| require file }

RecordKeeper.new.start
