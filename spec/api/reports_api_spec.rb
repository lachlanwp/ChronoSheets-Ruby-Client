=begin
#The ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 5 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  </p>  <p>      First Steps:       <ol>          <li>Make sure you've <a href='/HomeV2/App/sign-up'>signed up to ChronoSheets</a> to get yourself a user account</li>          <li>Confirm your account by following the link sent to your email address.  This will activate your account</li>          <li>Use your username and password to obtain an Auth Token by using the DoLogin method inside the UserProfile section below.  Use the Auth Token as an argument to the other methods</li>          <li>Try different methods in the API Playground to learn about the API</li>          <li>If you're stuck, try the full getting started guide on the <a href='/Home/ApiDocs'>API Toolkit</a> page.</li>      </ol>  </p>  <p>      Further Steps:       <ul>          <li>Create a mobile app (iOS, Android or Windows) using one of the ChronoSheets Mobile SDKs</li>          <li>Create a custom integration with your app using one of the ChronoSheets API Client Libraries.</li>      </ul>      Read more about the API Toolkit on the <a href='/Home/ApiDocs'>API Toolkit</a> page.  </p></div>

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ReportsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReportsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ReportsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportsApi' do
    it 'should create an instance of ReportsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ReportsApi)
    end
  end

  # unit tests for reports_get_all_charts_data_admin
  # Get Consolidated Admin Reports Data (Jobs, Tasks, Clients and Projects).  These are the organisation wide reports, with data from potentially all employees.    Requires the &#39;ReportAdmin&#39; permission.
  # 
  # @param start_date The start date for the date range.  Report data in the response is after this date
  # @param end_date The end date for the date range.  Report data in the response is before this date
  # @param user_ids A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string.
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseCombinedReportsData]
  describe 'reports_get_all_charts_data_admin test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reports_get_all_charts_data_user
  # Get Consolidated User Reports Data (Jobs, Tasks, Clients and Projects).  These are the user&#39;s own reports.    Requires the &#39;ViewOwnReports&#39; permission.
  # 
  # @param start_date The start date for the date range.  Report data in the response is after this date
  # @param end_date The end date for the date range.  Report data in the response is before this date
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseCombinedReportsData]
  describe 'reports_get_all_charts_data_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reports_get_org_trip_by_id
  # Get trip by Id, for reporting purposes.    Requires the &#39;ReportAdmin&#39; permission.
  # 
  # @param trip_id The ID of the Trip you want to get
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseTrip]
  describe 'reports_get_org_trip_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reports_get_organisation_timesheet_file_attachments
  # Reports on Organisation timesheet file attachments (files uploaded and attached to timesheet records.    Requires the &#39;ReportAdmin&#39; permission.
  # 
  # @param start_date The start date for the date range.  Report data in the response is after this date
  # @param end_date The end date for the date range.  Report data in the response is before this date
  # @param skip Skip this many items
  # @param take Take this many items
  # @param user_ids A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string.
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseForPaginatedListOrgReportTimesheetFileAttachment]
  describe 'reports_get_organisation_timesheet_file_attachments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reports_get_organisation_trips
  # Reports on Organisation trips (GPS tracking from whole organisation).    Requires the &#39;ReportAdmin&#39; permission.
  # 
  # @param start_date The start date for the date range.  Report data in the response is after this date
  # @param end_date The end date for the date range.  Report data in the response is before this date
  # @param skip Skip this many items
  # @param take Take this many items
  # @param user_ids A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string.
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseForPaginatedListOrgReportTrip]
  describe 'reports_get_organisation_trips test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reports_get_raw_data_admin
  # Get Timesheets Raw Data.  This data details each timesheet record.  These are the organisation wide timesheet records, with data from potentially all employees.    Requires the &#39;ReportAdmin&#39; permission.
  # 
  # @param start_date The start date for the date range.  Report data in the response is after this date
  # @param end_date The end date for the date range.  Report data in the response is before this date
  # @param user_ids A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string.
  # @param sort Decide which column to sort on
  # @param order Decide which direction to sort the column
  # @param skip Skip this many rows
  # @param take Take this many rows
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseForPaginatedListRawReportItem]
  describe 'reports_get_raw_data_admin test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reports_project_costings_admin
  # Gets project cost estimations VS actual cost for date range and users.    Requires the &#39;ReportAdmin&#39; permission.
  # 
  # @param start_date The start date for the date range.  Report data in the response is after this date
  # @param end_date The end date for the date range.  Report data in the response is before this date
  # @param user_ids A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string.
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseListProjectCostingReportItem]
  describe 'reports_project_costings_admin test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reports_user_jobs_over_time
  # Timeseries jobs data for the logged in user.    Requires the &#39;ViewOwnReports&#39; or &#39;SubmitTimesheets&#39;.
  # 
  # @param start_date The start date for the date range.  Report data in the response is after this date
  # @param end_date The end date for the date range.  Report data in the response is before this date
  # @param x_chronosheets_auth The ChronoSheets Auth Token
  # @param [Hash] opts the optional parameters
  # @return [CSApiResponseListJobSeriesReportItem]
  describe 'reports_user_jobs_over_time test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
