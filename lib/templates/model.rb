require 'time'

module Models
  class Mileage < Sequel::Model
    ISO8601_REGEX = /^\d{4}\-\d{2}\-\d{2}\T\d{2}\:\d{2}\:\d{2}[-+]\d{2}\:\d{2}$/

    many_to_one :trip

    def validate
      super
      validates_presence [:mileage_type_label, :label, :amount, :uom_code, :logged_at]
      validates_max_length 50, :mileage_type_label
      validates_max_length 50, :label
      validates_max_length 255, :description, allow_nil: true
      validates_max_length 10, :uom_code
      validates_type BigDecimal, :amount
      validates_type Time, parse_time(:logged_at)
      validates_format ISO8601_REGEX, :logged_at
    end

    def parse_time(time_at)
      begin
        Time.iso8601(time_at)
      rescue ArgumentError => e
        nil
      end
    end
  end
end
