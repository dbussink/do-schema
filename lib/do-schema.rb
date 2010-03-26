require 'data_objects'
require 'do-schema/database'
require 'do-schema/table'
require 'do-schema/column'
require 'do-schema/column/integer'
require 'do-schema/column/string'

require 'do-schema/adapters/adapter'
require 'do-schema/adapters/postgres/adapter'

module DataObjects::Schema

  def self.load(connection)
    # Be sure to grab a connection object
    unless connection.is_a? DataObjects::Connection
      connection = DataObjects::Connection.new(connection)
    end

    # Determine required adapter
    driver_name = connection.class.to_s.split('::')[1]
    adapter_class = DataObjects::Schema::Adapters.const_get(driver_name)::Adapter
    adapter = adapter_class.new(connection)
    adapter.database
  end

end
