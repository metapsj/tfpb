#!/usr/bin/env ruby

MODELS_DIR = "./models"
TEMPLATE_PATH = "./lib/templates/model.rb"

help = <<~EOS
  gen-model.rb
  NAME
        gen-model.rb
  SYNOPSIS
        ruby gen-model.rb NAME
  DESCRIPTION
        description
  AUTHOR
        metapsj
  SEE ALSO
        https://github.com/metapsj/cubano
EOS

name = ARGV.shift

# helper
help_exit = ->() { puts help; exit }

# guard
help_exit.call if name.nil?

# main
filepath = sprintf("%s/%s.rb", MODELS_DIR, name)
template = File.read(TEMPLATE_PATH)
File.write(filepath, template)

puts
puts sprintf("model created: %s", filepath)
puts
