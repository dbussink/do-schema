module DataObjects::Schema
  class Database

    attr_reader :adapter

    def initialize(adapter)
      @adapter = adapter
    end

    def name
      adapter.connection.uri.path.gsub(/^\//, '')
    end

    def uri
      adapter.connection.uri
    end

    def tables
      adapter.tables(self)
    end

  end
end