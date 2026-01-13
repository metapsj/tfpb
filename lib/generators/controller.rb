#!/usr/bin/env ruby
# frozen_string_literal: true

ROUTES_DIR = "./app/controllers"
TEMPLATE_PATH = "./lib/templates/controller.rb"

help = <<~EOS
  gen-controller.rb
  NAME
        gen-controller.rb
  SYNOPSIS
        ruby gen-controller.rb NAME
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
filepath = sprintf("%s/%s.rb", ROUTES_DIR, name)
template = File.read(TEMPLATE_PATH)
File.write(filepath, template)

puts
puts sprintf("controller created: %s", filepath)
puts


