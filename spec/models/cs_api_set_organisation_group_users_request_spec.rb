=begin
#ChronoSheets API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::CsApiSetOrganisationGroupUsersRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CsApiSetOrganisationGroupUsersRequest' do
  before do
    # run before each test
    @instance = SwaggerClient::CsApiSetOrganisationGroupUsersRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CsApiSetOrganisationGroupUsersRequest' do
    it 'should create an instance of CsApiSetOrganisationGroupUsersRequest' do
      expect(@instance).to be_instance_of(SwaggerClient::CsApiSetOrganisationGroupUsersRequest)
    end
  end
  describe 'test attribute "organisation_group_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "csv_user_ids"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

