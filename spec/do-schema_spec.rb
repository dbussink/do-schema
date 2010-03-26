require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe DataObjects::Schema do
  it "loads a database based on a uri" do
    database = DataObjects::Schema.load("postgres://postgres@localhost/do_test")
    p database.tables
  end
end
