#!/usr/bin/env ruby

require 'time'

MIGRATE_DIR = "./db/migrate"
TEMPLATE_PATH = "./lib/templates/migration.rb"

help = <<~EOS
  gen-migration.rb
  NAME
        gen-migration.rb
  SYNOPSIS
        ruby gen-migration.rb NAME
        make gen/migration name=table
  DESCRIPTION
        description
  AUTHOR
        metapsj
  SEE ALSO
        https://github.com/metapsj/picklerally
EOS

timestamp = Time.now.strftime("%Y%m%d%H%M%S")
name = ARGV.shift

# helper
help_exit = ->() { puts help; exit }

# guard
help_exit.call if name.nil?

# main
filename = sprintf("%s_%s.rb", timestamp, name)
filepath = sprintf("%s/%s", MIGRATE_DIR, filename)
template = File.read(TEMPLATE_PATH)
File.write(filepath, template)

puts
puts sprintf("migration created: %s", filepath)
puts
