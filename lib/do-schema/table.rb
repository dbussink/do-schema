module DataObjects::Schema
  class Table
    attr_reader :database, :name
    def initialize(database, name)
      @database = database
      @name     = name
    end
  end
end