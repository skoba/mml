require 'nokogiri'
require_relative './sample_validator'
require_relative './mml_schema_validator'

ROOT_PATH = File.expand_path('../../', __FILE__)
SCHEMA_LOCATION = File.join(ROOT_PATH, 'schema')
SAMPLE_LOCATION = File.join(ROOT_PATH, './sample/mml4')
