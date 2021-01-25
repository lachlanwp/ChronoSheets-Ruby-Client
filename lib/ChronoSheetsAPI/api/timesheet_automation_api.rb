=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'cgi'

module ChronoSheetsAPI
  class TimesheetAutomationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates an automation step.  Timesheet automation is determined by looking at steps taken by the user.  Create a step to log some automation action, such as entering a geofence or tapping on an NFC badge.  Requires the 'SubmitTimesheets' permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [CreateAutomationStepRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseInt32]
    def timesheet_automation_create_automation_step(x_chronosheets_auth, request, opts = {})
      data, _status_code, _headers = timesheet_automation_create_automation_step_with_http_info(x_chronosheets_auth, request, opts)
      data
    end

    # Creates an automation step.  Timesheet automation is determined by looking at steps taken by the user.  Create a step to log some automation action, such as entering a geofence or tapping on an NFC badge.  Requires the &#39;SubmitTimesheets&#39; permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [CreateAutomationStepRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseInt32, Integer, Hash)>] ApiResponseInt32 data, response status code and response headers
    def timesheet_automation_create_automation_step_with_http_info(x_chronosheets_auth, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimesheetAutomationApi.timesheet_automation_create_automation_step ...'
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling TimesheetAutomationApi.timesheet_automation_create_automation_step"
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling TimesheetAutomationApi.timesheet_automation_create_automation_step"
      end
      # resource path
      local_var_path = '/TimesheetAutomation/CreateAutomationStep'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponseInt32'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TimesheetAutomationApi.timesheet_automation_create_automation_step",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimesheetAutomationApi#timesheet_automation_create_automation_step\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve the timesheet automation / alerts for geofences activities or NFC tap on/off.  Requires the 'ManageGeofencing' permission.
    # @param geofence_id [Integer] The ID of the Geofence
    # @param nfc_id [Integer] 
    # @param user_id [Integer] 
    # @param sort [String] 
    # @param order [String] 
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Skip this many records
    # @option opts [Integer] :take Take this many records
    # @return [ApiResponseForPaginatedListTimesheetAutomationWithOrgAndGeofence]
    def timesheet_automation_get_timesheet_automation_audit_trail(geofence_id, nfc_id, user_id, sort, order, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = timesheet_automation_get_timesheet_automation_audit_trail_with_http_info(geofence_id, nfc_id, user_id, sort, order, x_chronosheets_auth, opts)
      data
    end

    # Retrieve the timesheet automation / alerts for geofences activities or NFC tap on/off.  Requires the &#39;ManageGeofencing&#39; permission.
    # @param geofence_id [Integer] The ID of the Geofence
    # @param nfc_id [Integer] 
    # @param user_id [Integer] 
    # @param sort [String] 
    # @param order [String] 
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Skip this many records
    # @option opts [Integer] :take Take this many records
    # @return [Array<(ApiResponseForPaginatedListTimesheetAutomationWithOrgAndGeofence, Integer, Hash)>] ApiResponseForPaginatedListTimesheetAutomationWithOrgAndGeofence data, response status code and response headers
    def timesheet_automation_get_timesheet_automation_audit_trail_with_http_info(geofence_id, nfc_id, user_id, sort, order, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimesheetAutomationApi.timesheet_automation_get_timesheet_automation_audit_trail ...'
      end
      # verify the required parameter 'geofence_id' is set
      if @api_client.config.client_side_validation && geofence_id.nil?
        fail ArgumentError, "Missing the required parameter 'geofence_id' when calling TimesheetAutomationApi.timesheet_automation_get_timesheet_automation_audit_trail"
      end
      # verify the required parameter 'nfc_id' is set
      if @api_client.config.client_side_validation && nfc_id.nil?
        fail ArgumentError, "Missing the required parameter 'nfc_id' when calling TimesheetAutomationApi.timesheet_automation_get_timesheet_automation_audit_trail"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TimesheetAutomationApi.timesheet_automation_get_timesheet_automation_audit_trail"
      end
      # verify the required parameter 'sort' is set
      if @api_client.config.client_side_validation && sort.nil?
        fail ArgumentError, "Missing the required parameter 'sort' when calling TimesheetAutomationApi.timesheet_automation_get_timesheet_automation_audit_trail"
      end
      # verify enum value
      allowable_values = ["UserName", "AutomationActionType", "ClientDateTime", "IsProcessed"]
      if @api_client.config.client_side_validation && !allowable_values.include?(sort)
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'order' is set
      if @api_client.config.client_side_validation && order.nil?
        fail ArgumentError, "Missing the required parameter 'order' when calling TimesheetAutomationApi.timesheet_automation_get_timesheet_automation_audit_trail"
      end
      # verify enum value
      allowable_values = ["Ascending", "Descending"]
      if @api_client.config.client_side_validation && !allowable_values.include?(order)
        fail ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling TimesheetAutomationApi.timesheet_automation_get_timesheet_automation_audit_trail"
      end
      # resource path
      local_var_path = '/TimesheetAutomation/GetTimesheetAutomationAuditTrail'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'GeofenceId'] = geofence_id
      query_params[:'NfcId'] = nfc_id
      query_params[:'UserId'] = user_id
      query_params[:'Sort'] = sort
      query_params[:'Order'] = order
      query_params[:'Skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'Take'] = opts[:'take'] if !opts[:'take'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponseForPaginatedListTimesheetAutomationWithOrgAndGeofence'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TimesheetAutomationApi.timesheet_automation_get_timesheet_automation_audit_trail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimesheetAutomationApi#timesheet_automation_get_timesheet_automation_audit_trail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
