require 'spec_helper'

class MMLSchemaValidator
  def initialize(schema)
    @schema = schema
  end

  def valid?
    begin
      Nokogiri::XML::Schema @schema
      true
    rescue Nokogiri::XML::SyntaxError => e
      puts "#{@schema} is invalid. #{e}"
      false
    end
  end

  def well_formed?
    begin
      Nokogiri::XML(@schema) {|config| config.strict.nonet }
      true
    rescue Nokogiri::XML::SyntaxError => e
      puts "#{@schema} is mal-formed. #{e}"
      false 
    end
  end
end
