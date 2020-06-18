=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module ChronoSheetsAPI
  class TimesheetAutomationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates an automation step.  Timesheet automation is determined by looking at steps taken by the user.  Create a step to log some automation action, such as entering a geofence or tapping on an NFC badge.  Requires the 'SubmitTimesheets' permission.
    # @param request 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CSApiResponseInt32]
    def timesheet_automation_create_automation_step(request, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = timesheet_automation_create_automation_step_with_http_info(request, x_chronosheets_auth, opts)
      data
    end

    # Creates an automation step.  Timesheet automation is determined by looking at steps taken by the user.  Create a step to log some automation action, such as entering a geofence or tapping on an NFC badge.  Requires the &#39;SubmitTimesheets&#39; permission.
    # @param request 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CSApiResponseInt32, Fixnum, Hash)>] CSApiResponseInt32 data, response status code and response headers
    def timesheet_automation_create_automation_step_with_http_info(request, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimesheetAutomationApi.timesheet_automation_create_automation_step ...'
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling TimesheetAutomationApi.timesheet_automation_create_automation_step"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling TimesheetAutomationApi.timesheet_automation_create_automation_step"
      end
      # resource path
      local_var_path = '/api/TimesheetAutomation/CreateAutomationStep'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CSApiResponseInt32')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimesheetAutomationApi#timesheet_automation_create_automation_step\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end