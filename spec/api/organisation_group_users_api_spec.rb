=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for ChronoSheetsAPI::OrganisationGroupUsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrganisationGroupUsersApi' do
  before do
    # run before each test
    @instance = ChronoSheetsAPI::OrganisationGroupUsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrganisationGroupUsersApi' do
    it 'should create an instance of OrganisationGroupUsersApi' do
      expect(@instance).to be_instance_of(ChronoSheetsAPI::OrganisationGroupUsersApi)
    end
  end

  # unit tests for organisation_group_users_get_organisation_group_users
  # Get a collection of organisation group users that belong to an organisation group.    Requires the &#39;ManageOrganisationGroups&#39; or &#39;ManageOrganisationUsers&#39; permissions.
  # @param org_group_id An OrganisationGroup Id
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseListUserForManagement]
  describe 'organisation_group_users_get_organisation_group_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for organisation_group_users_update_organisation_group_users
  # Set the users who belong to an organisation group.    Requires the &#39;ManageOrganisationGroups&#39; permissions.
  # @param request A request object specifying which users belong to an organisation group.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update. CsvUserIds is a comma separated list of User Ids, e.g. 1,2,3,4
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseBoolean]
  describe 'organisation_group_users_update_organisation_group_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
