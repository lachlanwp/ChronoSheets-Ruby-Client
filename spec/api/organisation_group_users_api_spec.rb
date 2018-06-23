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

# Unit tests for SwaggerClient::OrganisationGroupUsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrganisationGroupUsersApi' do
  before do
    # run before each test
    @instance = SwaggerClient::OrganisationGroupUsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrganisationGroupUsersApi' do
    it 'should create an instance of OrganisationGroupUsersApi' do
      expect(@instance).to be_instance_of(SwaggerClient::OrganisationGroupUsersApi)
    end
  end

  # unit tests for organisation_group_users_get_organisation_group_users
  # Get a collection of organisation group users that belong to an organisation group
  # 
  # @param org_group_id 
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CsApiApiResponseListUserForManagement]
  describe 'organisation_group_users_get_organisation_group_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for organisation_group_users_update_organisation_group_users
  # Set the users who belong to an organisation group
  # 
  # @param request 
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CsApiApiResponseBoolean]
  describe 'organisation_group_users_update_organisation_group_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
