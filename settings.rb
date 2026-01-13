module Settings
  File.read("env.sh").scan(/(.*?)="?(.*)"?$/).each do |key, value|
    ENV[key] ||= value
  end

  RACK_ENV      = ENV['RACK_ENV']
  DATABASE_URL  = ENV['DATABASE_URL']
  SECRET_KEY    = ENV["SECRET_KEY"]
  SECRET_TOKEN  = ENV["SECRET_TOKEN"]
end
