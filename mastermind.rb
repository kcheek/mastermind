lib_pattern = File.expand_path '../lib/*.rb', __FILE__
Dir[lib_pattern].each { |file| require file }

display = Display.new
Cli.new(display).start
