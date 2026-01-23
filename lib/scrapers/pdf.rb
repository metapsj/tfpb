# frozen_string_literal: true

require 'pdf/reader'

filename = File.expand_path(File.dirname(__FILE__)) + "sample.pdf"

PDF::Reader.open(filename) do |reader|
  reader.pages.each do |page|
    puts page.text
  end
end

