require 'sequel'
require 'logger'

#
# extensions
#
# Sequel.extension :fiber_concurrency

#
# plugins
#
Sequel::Model.plugin :validation_helpers
# Sequel::Model.plugin :json_serializer
# Sequel::Model.plugin :nested_attributes
# Sequel::Model.plugin :single_table_inheritance

#
# logger
#
LOG = {logger: Logger.new(STDOUT)}

#
# database
#
DB = Sequel.connect(Settings::DATABASE_URL)

#
# pragmas
#
DB.execute(
  <<~PRAGMAS
    PRAGMA journal_mode=WAL;
    -- PRAGMA synchronous=FULL;
    -- PRAGMA strict=ON;
    PRAGMA foreign_keys=ON;
  PRAGMAS
)

