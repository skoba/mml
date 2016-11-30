require_relative './mml_schema_validator'

describe 'MMLSchemaValidator' do
  context '#well_formed?' do
    example 'this is well formed xml' do
      validator = MMLSchemaValidator.new WELL_FORMED_SCHEMA
      expect(validator).to be_well_formed
    end

    example 'this is mal formed xml' do
      validator = MMLSchemaValidator.new MAL_FORMED_SCHEMA
      expect(validator).not_to be_well_formed
    end
  end

  context '#valid?' do
    example 'this is valid schema' do
      validator = MMLSchemaValidator.new VALID_SCHEMA
      expect(validator).to be_valid
    end

    describe 'these are invalid schema' do
      let(:validator) { MMLSchemaValidator.new WELL_FORMED_BUT_INVALID_SCHEMA }

      example 'this schema is well formed' do
        expect(validator).to be_well_formed
      end

      example 'this schema is well formed, but invalid' do
        expect(validator).not_to be_valid
      end
    end
  end
end

WELL_FORMED_SCHEMA = <<'END_SCHEMA'
<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
  elementFormDefault="qualified"
  targetNamespace="http://www.medxml.net/MML/v4/SharedComponent/Address/1.0"
  xmlns:mmlAd="http://www.medxml.net/MML/v4/SharedComponent/Address/1.0">
  <xs:element name="Address">
  </xs:element>
</xs:schema>
END_SCHEMA

MAL_FORMED_SCHEMA = <<'END_SCHEMA'
<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="address">
  <xs:notclosed_tag>
  </xs:element
</xs:schema>
END_SCHEMA

WELL_FORMED_BUT_INVALID_SCHEMA = <<'END_SCHEMA'
<?xml version="1.0" encoding="UTF-8"?>
<xs:schema>
  <xs:element name="Address">
    <xs:complexType>
      <xs:sequence>
        <xs:choice>
          <xs:element minOccurs="0" ref="mmlAd:full"/>
          <xs:sequence>
            <xs:element minOccurs="0" ref="mmlAd:prefecture"/>
            <xs:element minOccurs="0" ref="mmlAd:city"/>
            <xs:element minOccurs="0" ref="mmlAd:town"/>
            <xs:element minOccurs="0" ref="mmlAd:homeNumber"/>
          </xs:sequence>
        </xs:choice>
        <xs:element minOccurs="0" ref="mmlAd:zip"/>
        <xs:element minOccurs="0" ref="mmlAd:countryCode"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>
END_SCHEMA

VALID_SCHEMA = <<'END_SCHEMA'
<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
  targetNamespace="http://www.medxml.net/MML/v4/SharedComponent/Address/1.0"
  xmlns:mmlAd="http://www.medxml.net/MML/v4/SharedComponent/Address/1.0">
  <xs:element name="Address">
    <xs:complexType>
      <xs:sequence>
        <xs:choice>
          <xs:element minOccurs="0" ref="mmlAd:full"/>
          <xs:sequence>
            <xs:element minOccurs="0" ref="mmlAd:prefecture"/>
            <xs:element minOccurs="0" ref="mmlAd:city"/>
            <xs:element minOccurs="0" ref="mmlAd:town"/>
            <xs:element minOccurs="0" ref="mmlAd:homeNumber"/>
          </xs:sequence>
        </xs:choice>
        <xs:element minOccurs="0" ref="mmlAd:zip"/>
        <xs:element minOccurs="0" ref="mmlAd:countryCode"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  
  <xs:element name="countryCode" type="xs:string"/>
  <xs:element name="zip" type="xs:string"/>
  <xs:element name="homeNumber" type="xs:string"/>
  <xs:element name="town" type="xs:string"/>
  <xs:element name="city" type="xs:string"/>
  <xs:element name="prefecture" type="xs:string"/>
  <xs:element name="full" type="xs:string"/>
</xs:schema>
END_SCHEMA
