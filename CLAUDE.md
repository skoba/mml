# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the MML (Medical Markup Language) repository - a Ruby-based implementation for medical information exchange standards. MML is a medical markup language that has been developed since 1995 and is now at version 4.2.0, compliant with W3C XML Schema 1.1.

## Common Development Commands

### Testing
```bash
bundle install          # Install dependencies
rake spec               # Run all tests (default rake task)
rspec                   # Run tests directly with RSpec
```

### Documentation Generation
```bash
rake html               # Generate HTML documentation from AsciiDoc sources
```

The HTML documentation is generated from `doc/MML4/mml4.adoc` using AsciiDoctor and outputs to `doc/MML4/html/`.

### Dependencies
- Ruby (tested with 2.3.3 based on .travis.yml)
- Bundler for dependency management
- Key gems: rspec, rake, nokogiri, asciidoctor, erubis

## Architecture Overview

### Directory Structure
- **`schema/`** - XML Schema definitions (.xsd files) for MML v4.0, containing 30+ medical module schemas
- **`doc/MML4/`** - AsciiDoc documentation source files (68 .adoc files) for comprehensive MML specification
- **`lib/`** - Ruby utilities including `xsd2adoc.rb` for schema-to-documentation conversion
- **`spec/`** - RSpec test files with XML schema validation helpers
- **`sample/mml4/`** - Sample MML XML documents for testing and validation
- **`templates/`** - ERB templates for code/documentation generation
- **`LinkEHR/`** - LinkEHR integration components and MML modules
- **`openEHR/`** - openEHR archetype definitions (CC-BY-SA licensed)
- **`mapping/`** - Data mapping configurations

### Key Components

**XML Schema Architecture:**
- Core schema: `mml.xsd` - Main MML document structure
- Module schemas: Individual medical domain schemas (vitalsign, prescription, surgery, etc.)
- Common components: `common.xsd`, `mml_datatypes_and_header_4.0.xsd`
- Backward compatibility with DTD format available

**Documentation System:**
- Master document: `doc/MML4/mml4.adoc` includes all component documentation
- Modular documentation with one .adoc file per schema/module
- ERB templating system for generating documentation from schemas

**Testing Framework:**
- RSpec-based testing with custom validation helpers
- XML schema validation against sample documents
- Test helpers in `spec/spec_helper.rb` define paths and utilities

## Development Workflow

1. **Schema Changes**: Modify .xsd files in `schema/` directory
2. **Documentation Updates**: Update corresponding .adoc files in `doc/MML4/`
3. **Testing**: Add/update sample XML documents and corresponding tests
4. **Validation**: Run tests to ensure schema compliance
5. **Documentation Build**: Generate HTML documentation using `rake html`

## MML Version 4 Key Changes

- Migration from DTD to W3C XML Schema 1.1
- Character encoding changed from Shift JIS to UTF-8
- Added modules: hemodialysis, vitalsign, flowsheet, prescription, injection
- Simplified structure by removing redundant HL7 CDA tags
- Maintained namespace and XPath compatibility for easier migration

## Licensing

- Main codebase: Apache License 2.0 (MedXML consortium)
- openEHR components: CC-BY-SA license
- Comprehensive contributor list maintained in README.md