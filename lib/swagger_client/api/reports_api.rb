=begin
#ChronoSheets API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class ReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get Consolidated Admin Reports Data (Jobs, Tasks, Clients and Projects)
    # 
    # @param start_date 
    # @param end_date 
    # @param user_ids 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseCombinedReportsData]
    def reports_get_all_charts_data_admin(start_date, end_date, user_ids, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = reports_get_all_charts_data_admin_with_http_info(start_date, end_date, user_ids, x_chronosheets_auth, opts)
      return data
    end

    # Get Consolidated Admin Reports Data (Jobs, Tasks, Clients and Projects)
    # 
    # @param start_date 
    # @param end_date 
    # @param user_ids 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseCombinedReportsData, Fixnum, Hash)>] CsApiApiResponseCombinedReportsData data, response status code and response headers
    def reports_get_all_charts_data_admin_with_http_info(start_date, end_date, user_ids, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.reports_get_all_charts_data_admin ..."
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling ReportsApi.reports_get_all_charts_data_admin"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling ReportsApi.reports_get_all_charts_data_admin"
      end
      # verify the required parameter 'user_ids' is set
      if @api_client.config.client_side_validation && user_ids.nil?
        fail ArgumentError, "Missing the required parameter 'user_ids' when calling ReportsApi.reports_get_all_charts_data_admin"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling ReportsApi.reports_get_all_charts_data_admin"
      end
      # resource path
      local_var_path = "/api/Reports/GetAllChartsDataAdmin"

      # query parameters
      query_params = {}
      query_params[:'StartDate'] = start_date
      query_params[:'EndDate'] = end_date
      query_params[:'UserIds'] = user_ids

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CsApiApiResponseCombinedReportsData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#reports_get_all_charts_data_admin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Consolidated User Reports Data (Jobs and Tasks)
    # 
    # @param start_date 
    # @param end_date 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseCombinedReportsData]
    def reports_get_all_charts_data_user(start_date, end_date, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = reports_get_all_charts_data_user_with_http_info(start_date, end_date, x_chronosheets_auth, opts)
      return data
    end

    # Get Consolidated User Reports Data (Jobs and Tasks)
    # 
    # @param start_date 
    # @param end_date 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseCombinedReportsData, Fixnum, Hash)>] CsApiApiResponseCombinedReportsData data, response status code and response headers
    def reports_get_all_charts_data_user_with_http_info(start_date, end_date, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.reports_get_all_charts_data_user ..."
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling ReportsApi.reports_get_all_charts_data_user"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling ReportsApi.reports_get_all_charts_data_user"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling ReportsApi.reports_get_all_charts_data_user"
      end
      # resource path
      local_var_path = "/api/Reports/GetAllChartsDataUser"

      # query parameters
      query_params = {}
      query_params[:'StartDate'] = start_date
      query_params[:'EndDate'] = end_date

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CsApiApiResponseCombinedReportsData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#reports_get_all_charts_data_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get trip by Id, for reporting purposes
    # 
    # @param trip_id The ID of the trip
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseTrip]
    def reports_get_org_trip_by_id(trip_id, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = reports_get_org_trip_by_id_with_http_info(trip_id, x_chronosheets_auth, opts)
      return data
    end

    # Get trip by Id, for reporting purposes
    # 
    # @param trip_id The ID of the trip
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseTrip, Fixnum, Hash)>] CsApiApiResponseTrip data, response status code and response headers
    def reports_get_org_trip_by_id_with_http_info(trip_id, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.reports_get_org_trip_by_id ..."
      end
      # verify the required parameter 'trip_id' is set
      if @api_client.config.client_side_validation && trip_id.nil?
        fail ArgumentError, "Missing the required parameter 'trip_id' when calling ReportsApi.reports_get_org_trip_by_id"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling ReportsApi.reports_get_org_trip_by_id"
      end
      # resource path
      local_var_path = "/api/Reports/GetOrgTripById"

      # query parameters
      query_params = {}
      query_params[:'TripId'] = trip_id

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CsApiApiResponseTrip')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#reports_get_org_trip_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reports on Organisation timesheet file attachments
    # 
    # @param start_date 
    # @param end_date 
    # @param skip 
    # @param take 
    # @param user_ids 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseForPaginatedListOrgReportTimesheetFileAttachment]
    def reports_get_organisation_timesheet_file_attachments(start_date, end_date, skip, take, user_ids, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = reports_get_organisation_timesheet_file_attachments_with_http_info(start_date, end_date, skip, take, user_ids, x_chronosheets_auth, opts)
      return data
    end

    # Reports on Organisation timesheet file attachments
    # 
    # @param start_date 
    # @param end_date 
    # @param skip 
    # @param take 
    # @param user_ids 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseForPaginatedListOrgReportTimesheetFileAttachment, Fixnum, Hash)>] CsApiApiResponseForPaginatedListOrgReportTimesheetFileAttachment data, response status code and response headers
    def reports_get_organisation_timesheet_file_attachments_with_http_info(start_date, end_date, skip, take, user_ids, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.reports_get_organisation_timesheet_file_attachments ..."
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling ReportsApi.reports_get_organisation_timesheet_file_attachments"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling ReportsApi.reports_get_organisation_timesheet_file_attachments"
      end
      # verify the required parameter 'skip' is set
      if @api_client.config.client_side_validation && skip.nil?
        fail ArgumentError, "Missing the required parameter 'skip' when calling ReportsApi.reports_get_organisation_timesheet_file_attachments"
      end
      # verify the required parameter 'take' is set
      if @api_client.config.client_side_validation && take.nil?
        fail ArgumentError, "Missing the required parameter 'take' when calling ReportsApi.reports_get_organisation_timesheet_file_attachments"
      end
      # verify the required parameter 'user_ids' is set
      if @api_client.config.client_side_validation && user_ids.nil?
        fail ArgumentError, "Missing the required parameter 'user_ids' when calling ReportsApi.reports_get_organisation_timesheet_file_attachments"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling ReportsApi.reports_get_organisation_timesheet_file_attachments"
      end
      # resource path
      local_var_path = "/api/Reports/GetOrganisationTimesheetFileAttachments"

      # query parameters
      query_params = {}
      query_params[:'StartDate'] = start_date
      query_params[:'EndDate'] = end_date
      query_params[:'Skip'] = skip
      query_params[:'Take'] = take
      query_params[:'UserIds'] = user_ids

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CsApiApiResponseForPaginatedListOrgReportTimesheetFileAttachment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#reports_get_organisation_timesheet_file_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reports on Organisation trips (GPS tracking from whole organisation)
    # 
    # @param start_date 
    # @param end_date 
    # @param skip 
    # @param take 
    # @param user_ids 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseForPaginatedListOrgReportTrip]
    def reports_get_organisation_trips(start_date, end_date, skip, take, user_ids, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = reports_get_organisation_trips_with_http_info(start_date, end_date, skip, take, user_ids, x_chronosheets_auth, opts)
      return data
    end

    # Reports on Organisation trips (GPS tracking from whole organisation)
    # 
    # @param start_date 
    # @param end_date 
    # @param skip 
    # @param take 
    # @param user_ids 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseForPaginatedListOrgReportTrip, Fixnum, Hash)>] CsApiApiResponseForPaginatedListOrgReportTrip data, response status code and response headers
    def reports_get_organisation_trips_with_http_info(start_date, end_date, skip, take, user_ids, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.reports_get_organisation_trips ..."
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling ReportsApi.reports_get_organisation_trips"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling ReportsApi.reports_get_organisation_trips"
      end
      # verify the required parameter 'skip' is set
      if @api_client.config.client_side_validation && skip.nil?
        fail ArgumentError, "Missing the required parameter 'skip' when calling ReportsApi.reports_get_organisation_trips"
      end
      # verify the required parameter 'take' is set
      if @api_client.config.client_side_validation && take.nil?
        fail ArgumentError, "Missing the required parameter 'take' when calling ReportsApi.reports_get_organisation_trips"
      end
      # verify the required parameter 'user_ids' is set
      if @api_client.config.client_side_validation && user_ids.nil?
        fail ArgumentError, "Missing the required parameter 'user_ids' when calling ReportsApi.reports_get_organisation_trips"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling ReportsApi.reports_get_organisation_trips"
      end
      # resource path
      local_var_path = "/api/Reports/GetOrganisationTrips"

      # query parameters
      query_params = {}
      query_params[:'StartDate'] = start_date
      query_params[:'EndDate'] = end_date
      query_params[:'Skip'] = skip
      query_params[:'Take'] = take
      query_params[:'UserIds'] = user_ids

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CsApiApiResponseForPaginatedListOrgReportTrip')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#reports_get_organisation_trips\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Timesheets Raw Data
    # 
    # @param start_date 
    # @param end_date 
    # @param user_ids 
    # @param sort 
    # @param order 
    # @param skip 
    # @param take 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseForPaginatedListRawReportItem]
    def reports_get_raw_data_admin(start_date, end_date, user_ids, sort, order, skip, take, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = reports_get_raw_data_admin_with_http_info(start_date, end_date, user_ids, sort, order, skip, take, x_chronosheets_auth, opts)
      return data
    end

    # Get Timesheets Raw Data
    # 
    # @param start_date 
    # @param end_date 
    # @param user_ids 
    # @param sort 
    # @param order 
    # @param skip 
    # @param take 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseForPaginatedListRawReportItem, Fixnum, Hash)>] CsApiApiResponseForPaginatedListRawReportItem data, response status code and response headers
    def reports_get_raw_data_admin_with_http_info(start_date, end_date, user_ids, sort, order, skip, take, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.reports_get_raw_data_admin ..."
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling ReportsApi.reports_get_raw_data_admin"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling ReportsApi.reports_get_raw_data_admin"
      end
      # verify the required parameter 'user_ids' is set
      if @api_client.config.client_side_validation && user_ids.nil?
        fail ArgumentError, "Missing the required parameter 'user_ids' when calling ReportsApi.reports_get_raw_data_admin"
      end
      # verify the required parameter 'sort' is set
      if @api_client.config.client_side_validation && sort.nil?
        fail ArgumentError, "Missing the required parameter 'sort' when calling ReportsApi.reports_get_raw_data_admin"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Username', 'EmailAddress', 'JobCode', 'TaskName', 'ClientName', 'ProjectName', 'StartDate', 'EndDate', 'SpanSeconds', 'Description', 'PayAmount', 'PayOvertimeAmount', 'TripCost', 'TripDistanceMeters'].include?(sort)
        fail ArgumentError, "invalid value for 'sort', must be one of Username, EmailAddress, JobCode, TaskName, ClientName, ProjectName, StartDate, EndDate, SpanSeconds, Description, PayAmount, PayOvertimeAmount, TripCost, TripDistanceMeters"
      end
      # verify the required parameter 'order' is set
      if @api_client.config.client_side_validation && order.nil?
        fail ArgumentError, "Missing the required parameter 'order' when calling ReportsApi.reports_get_raw_data_admin"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Ascending', 'Descending'].include?(order)
        fail ArgumentError, "invalid value for 'order', must be one of Ascending, Descending"
      end
      # verify the required parameter 'skip' is set
      if @api_client.config.client_side_validation && skip.nil?
        fail ArgumentError, "Missing the required parameter 'skip' when calling ReportsApi.reports_get_raw_data_admin"
      end
      # verify the required parameter 'take' is set
      if @api_client.config.client_side_validation && take.nil?
        fail ArgumentError, "Missing the required parameter 'take' when calling ReportsApi.reports_get_raw_data_admin"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling ReportsApi.reports_get_raw_data_admin"
      end
      # resource path
      local_var_path = "/api/Reports/GetRawDataAdmin"

      # query parameters
      query_params = {}
      query_params[:'StartDate'] = start_date
      query_params[:'EndDate'] = end_date
      query_params[:'UserIds'] = user_ids
      query_params[:'Sort'] = sort
      query_params[:'Order'] = order
      query_params[:'Skip'] = skip
      query_params[:'Take'] = take

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CsApiApiResponseForPaginatedListRawReportItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#reports_get_raw_data_admin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets project cost estimations VS actual cost for date range and users
    # 
    # @param start_date 
    # @param end_date 
    # @param user_ids 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseListProjectCostingReportItem]
    def reports_project_costings_admin(start_date, end_date, user_ids, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = reports_project_costings_admin_with_http_info(start_date, end_date, user_ids, x_chronosheets_auth, opts)
      return data
    end

    # Gets project cost estimations VS actual cost for date range and users
    # 
    # @param start_date 
    # @param end_date 
    # @param user_ids 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseListProjectCostingReportItem, Fixnum, Hash)>] CsApiApiResponseListProjectCostingReportItem data, response status code and response headers
    def reports_project_costings_admin_with_http_info(start_date, end_date, user_ids, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.reports_project_costings_admin ..."
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling ReportsApi.reports_project_costings_admin"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling ReportsApi.reports_project_costings_admin"
      end
      # verify the required parameter 'user_ids' is set
      if @api_client.config.client_side_validation && user_ids.nil?
        fail ArgumentError, "Missing the required parameter 'user_ids' when calling ReportsApi.reports_project_costings_admin"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling ReportsApi.reports_project_costings_admin"
      end
      # resource path
      local_var_path = "/api/Reports/ProjectCostingsAdmin"

      # query parameters
      query_params = {}
      query_params[:'StartDate'] = start_date
      query_params[:'EndDate'] = end_date
      query_params[:'UserIds'] = user_ids

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CsApiApiResponseListProjectCostingReportItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#reports_project_costings_admin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Timeseries jobs data for the logged in user
    # 
    # @param start_date 
    # @param end_date 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseListJobSeriesReportItem]
    def reports_user_jobs_over_time(start_date, end_date, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = reports_user_jobs_over_time_with_http_info(start_date, end_date, x_chronosheets_auth, opts)
      return data
    end

    # Timeseries jobs data for the logged in user
    # 
    # @param start_date 
    # @param end_date 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseListJobSeriesReportItem, Fixnum, Hash)>] CsApiApiResponseListJobSeriesReportItem data, response status code and response headers
    def reports_user_jobs_over_time_with_http_info(start_date, end_date, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportsApi.reports_user_jobs_over_time ..."
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling ReportsApi.reports_user_jobs_over_time"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling ReportsApi.reports_user_jobs_over_time"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling ReportsApi.reports_user_jobs_over_time"
      end
      # resource path
      local_var_path = "/api/Reports/UserJobsOverTime"

      # query parameters
      query_params = {}
      query_params[:'StartDate'] = start_date
      query_params[:'EndDate'] = end_date

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CsApiApiResponseListJobSeriesReportItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#reports_user_jobs_over_time\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
