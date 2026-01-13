#!/usr/bin/env ruby
# frozen_string_literal: true

ROUTES_DIR = "./app/routes"
TEMPLATE_PATH = "./lib/templates/route.rb"

help = <<~EOS
  gen-route.rb
  NAME
        gen-route.rb
  SYNOPSIS
        ruby gen-route.rb NAME
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
puts sprintf("route created: %s", filepath)
puts

