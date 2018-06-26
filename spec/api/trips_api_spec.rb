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

# Unit tests for SwaggerClient::TripsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TripsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::TripsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TripsApi' do
    it 'should create an instance of TripsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::TripsApi)
    end
  end

  # unit tests for trips_create_trip
  # Create a new trip.  Important: create a timesheet record before calling this, passing in the new timesheet record id as a reference.
  # 
  # @param request The create trip request
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseInt32]
  describe 'trips_create_trip test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for trips_get_my_trip_by_id
  # Get trip by Id
  # 
  # @param trip_id The ID of the trip
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseTrip]
  describe 'trips_get_my_trip_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for trips_get_my_trips
  # Get my trips
  # 
  # @param start_date 
  # @param end_date 
  # @param skip 
  # @param take 
  # @param vehicle_id 
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseForPaginatedListTrip]
  describe 'trips_get_my_trips test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
