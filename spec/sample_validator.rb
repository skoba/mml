class SampleValidator
  def initialize(schema)
    @schema = schema
  end

  def schema
    Nokogiri::XML::Schema(File.read(schema_file))
  end

  def valid?(sample)
    schema.valid?(sample_file(sample))
  end

  def sample_file(sample)
    Nokogiri::XML(File.read(File.join SAMPLE_LOCATION, sample))
  end

  def schema_file
    File.join SCHEMA_LOCATION, @schema
  end
end
