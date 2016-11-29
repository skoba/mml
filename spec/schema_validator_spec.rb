require 'spec_helper'
XSD_FILES = File.join(SCHEMA_LOCATION, '*.xsd')

describe 'MML schema validator' do
  example 'xsd files should be validated as XML' do
    Dir[XSD_FILES].each do |schema|
      validator = MMLSchemaValidator.new schema
      expect { validator.parse }.
        not_to raise_error
    end
  end
end
