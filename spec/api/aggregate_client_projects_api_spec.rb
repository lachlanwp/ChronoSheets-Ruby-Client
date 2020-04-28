=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for ChronoSheetsAPI::AggregateClientProjectsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AggregateClientProjectsApi' do
  before do
    # run before each test
    @instance = ChronoSheetsAPI::AggregateClientProjectsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AggregateClientProjectsApi' do
    it 'should create an instance of AggregateClientProjectsApi' do
      expect(@instance).to be_instance_of(ChronoSheetsAPI::AggregateClientProjectsApi)
    end
  end

  # unit tests for aggregate_client_projects_get_aggregate_client_projects
  # Get client and project information, aggregated.    Requires the &#39;SubmitTimesheets&#39; or &#39;ManageClientsAndProjects&#39; permissions.
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseListAggregateClient]
  describe 'aggregate_client_projects_get_aggregate_client_projects test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
