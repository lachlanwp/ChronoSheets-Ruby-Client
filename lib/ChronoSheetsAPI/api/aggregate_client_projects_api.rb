=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module ChronoSheetsAPI
  class AggregateClientProjectsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get client and project information, aggregated.    Requires the 'SubmitTimesheets' or 'ManageClientsAndProjects' permissions.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseListAggregateClient]
    def aggregate_client_projects_get_aggregate_client_projects(x_chronosheets_auth, opts = {})
      data, _status_code, _headers = aggregate_client_projects_get_aggregate_client_projects_with_http_info(x_chronosheets_auth, opts)
      data
    end

    # Get client and project information, aggregated.    Requires the &#39;SubmitTimesheets&#39; or &#39;ManageClientsAndProjects&#39; permissions.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseListAggregateClient, Integer, Hash)>] ApiResponseListAggregateClient data, response status code and response headers
    def aggregate_client_projects_get_aggregate_client_projects_with_http_info(x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AggregateClientProjectsApi.aggregate_client_projects_get_aggregate_client_projects ...'
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling AggregateClientProjectsApi.aggregate_client_projects_get_aggregate_client_projects"
      end
      # resource path
      local_var_path = '/AggregateClientProjects/GetAggregateClientProjects'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'x-chronosheets-auth'] = x_chronosheets_auth

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ApiResponseListAggregateClient' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AggregateClientProjectsApi#aggregate_client_projects_get_aggregate_client_projects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
