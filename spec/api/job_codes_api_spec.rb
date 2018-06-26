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

# Unit tests for SwaggerClient::JobCodesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'JobCodesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::JobCodesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobCodesApi' do
    it 'should create an instance of JobCodesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::JobCodesApi)
    end
  end

  # unit tests for job_codes_create_job_code
  # Create a job code
  # 
  # @param request 
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseInt32]
  describe 'job_codes_create_job_code test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_codes_delete_job_code
  # Delete a job code
  # 
  # @param job_code_id The ID of the job code your want to delete
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseBoolean]
  describe 'job_codes_delete_job_code test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_codes_get_job_code_by_id
  # Get a particular job code by job code id
  # 
  # @param job_code_id 
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseJobCode]
  describe 'job_codes_get_job_code_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_codes_get_job_codes
  # Get job codes for your organisation
  # 
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseListJobCode]
  describe 'job_codes_get_job_codes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_codes_update_job_code
  # Update a job code
  # 
  # @param request 
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseBoolean]
  describe 'job_codes_update_job_code test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
