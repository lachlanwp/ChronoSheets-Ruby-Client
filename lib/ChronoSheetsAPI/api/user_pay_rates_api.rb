=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module ChronoSheetsAPI
  class UserPayRatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new pay rate for a particular user, archiving the previous pay rate.    Requires the 'ManageOrganisationUsers' permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [InsertUserHourlyRateRequest] An Insert UserHourlyRate Request object containing values for the new UserHourlyRate to create
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseInt32]
    def user_pay_rates_create_pay_rate(x_chronosheets_auth, request, opts = {})
      data, _status_code, _headers = user_pay_rates_create_pay_rate_with_http_info(x_chronosheets_auth, request, opts)
      data
    end

    # Create a new pay rate for a particular user, archiving the previous pay rate.    Requires the &#39;ManageOrganisationUsers&#39; permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [InsertUserHourlyRateRequest] An Insert UserHourlyRate Request object containing values for the new UserHourlyRate to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseInt32, Integer, Hash)>] ApiResponseInt32 data, response status code and response headers
    def user_pay_rates_create_pay_rate_with_http_info(x_chronosheets_auth, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserPayRatesApi.user_pay_rates_create_pay_rate ...'
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling UserPayRatesApi.user_pay_rates_create_pay_rate"
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling UserPayRatesApi.user_pay_rates_create_pay_rate"
      end
      # resource path
      local_var_path = '/UserPayRates/CreatePayRate'

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
      post_body = opts[:body] || @api_client.object_to_http_body(request) 

      # return_type
      return_type = opts[:return_type] || 'ApiResponseInt32' 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserPayRatesApi#user_pay_rates_create_pay_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a collection of pay rates for a particular user, specified by user id.    Requires the 'ManageOrganisationUsers' permission.
    # @param user_id [Integer] The ID of the User for which you want to get UserHourlyRate objects
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseListUserHourlyRate]
    def user_pay_rates_get_pay_rates(user_id, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = user_pay_rates_get_pay_rates_with_http_info(user_id, x_chronosheets_auth, opts)
      data
    end

    # Get a collection of pay rates for a particular user, specified by user id.    Requires the &#39;ManageOrganisationUsers&#39; permission.
    # @param user_id [Integer] The ID of the User for which you want to get UserHourlyRate objects
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseListUserHourlyRate, Integer, Hash)>] ApiResponseListUserHourlyRate data, response status code and response headers
    def user_pay_rates_get_pay_rates_with_http_info(user_id, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserPayRatesApi.user_pay_rates_get_pay_rates ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserPayRatesApi.user_pay_rates_get_pay_rates"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling UserPayRatesApi.user_pay_rates_get_pay_rates"
      end
      # resource path
      local_var_path = '/UserPayRates/GetPayRates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'UserId'] = user_id

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
      return_type = opts[:return_type] || 'ApiResponseListUserHourlyRate' 

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
        @api_client.config.logger.debug "API called: UserPayRatesApi#user_pay_rates_get_pay_rates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
