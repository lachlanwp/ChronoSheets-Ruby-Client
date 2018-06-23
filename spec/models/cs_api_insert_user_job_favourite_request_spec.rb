=begin
#ChronoSheets API

#ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 5 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.

OpenAPI spec version: v1
Contact: lachlan@chronosheets.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::CsApiInsertUserJobFavouriteRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CsApiInsertUserJobFavouriteRequest' do
  before do
    # run before each test
    @instance = SwaggerClient::CsApiInsertUserJobFavouriteRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CsApiInsertUserJobFavouriteRequest' do
    it 'should create an instance of CsApiInsertUserJobFavouriteRequest' do
      expect(@instance).to be_instance_of(SwaggerClient::CsApiInsertUserJobFavouriteRequest)
    end
  end
  describe 'test attribute "job_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

