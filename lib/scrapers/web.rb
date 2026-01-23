# frozen_string_literal: true

require 'json'
require 'vessel'

class TimeForPickleball < Vessel::Cargo
  domain 'timeforpickleball.com'
  start_urls 'https://timeforpickleball.com/courts'

  def parse
    # TODO: 
  end
end

