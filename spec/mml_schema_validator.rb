class MMLSchemaValidator
  def initialize(schema)
    @schema_file = File.read schema
  end

  def parse
    Nokogiri::XML.parse @schema_file
  end
end
