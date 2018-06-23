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

# Unit tests for SwaggerClient::ClientsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ClientsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ClientsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClientsApi' do
    it 'should create an instance of ClientsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ClientsApi)
    end
  end

  # unit tests for clients_create_client
  # Create a client
  # 
  # @param request 
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CsApiApiResponseInt32]
  describe 'clients_create_client test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for clients_get_client
  # Get a particular client
  # 
  # @param client_id The ID of the client you want to get
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CsApiApiResponseClient]
  describe 'clients_get_client test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for clients_get_clients
  # Get a collection of clients that are under your organisation
  # 
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CsApiApiResponseListClient]
  describe 'clients_get_clients test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for clients_update_client
  # Update a client
  # 
  # @param request 
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CsApiApiResponseBoolean]
  describe 'clients_update_client test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
