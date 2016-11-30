require 'spec_helper'
XSD_FILES = File.join(SCHEMA_LOCATION, '*.xsd')

describe 'MML schema validator' do
  example 'xsd files should be validated as well-formed XML' do
    Dir[XSD_FILES].each do |schema|
      validator = MMLSchemaValidator.new(File.read schema)
      expect(validator).to be_well_formed
    end
  end

  example 'xsd files should be validates as XML schema' do
    Dir[XSD_FILES].each do |schema|
      validator = MMLSchemaValidator.new(File.read schema)
      expect(validator).to be_valid
    end    
  end
end
