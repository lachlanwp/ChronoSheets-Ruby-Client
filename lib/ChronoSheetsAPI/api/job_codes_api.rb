=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module ChronoSheetsAPI
  class JobCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a job code.    Requires the 'ManageJobsAndTask' permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [InsertJobCodeRequest] An Insert JobCode Request object containing values for the new JobCode to create
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseInt32]
    def job_codes_create_job_code(x_chronosheets_auth, request, opts = {})
      data, _status_code, _headers = job_codes_create_job_code_with_http_info(x_chronosheets_auth, request, opts)
      data
    end

    # Create a job code.    Requires the &#39;ManageJobsAndTask&#39; permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [InsertJobCodeRequest] An Insert JobCode Request object containing values for the new JobCode to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseInt32, Integer, Hash)>] ApiResponseInt32 data, response status code and response headers
    def job_codes_create_job_code_with_http_info(x_chronosheets_auth, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobCodesApi.job_codes_create_job_code ...'
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling JobCodesApi.job_codes_create_job_code"
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling JobCodesApi.job_codes_create_job_code"
      end
      # resource path
      local_var_path = '/JobCodes/CreateJobCode'

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
        @api_client.config.logger.debug "API called: JobCodesApi#job_codes_create_job_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a job code.    Requires the 'ManageJobsAndTask' permission.
    # @param job_code_id [Integer] The ID of the job code you want to delete
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseBoolean]
    def job_codes_delete_job_code(job_code_id, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = job_codes_delete_job_code_with_http_info(job_code_id, x_chronosheets_auth, opts)
      data
    end

    # Delete a job code.    Requires the &#39;ManageJobsAndTask&#39; permission.
    # @param job_code_id [Integer] The ID of the job code you want to delete
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseBoolean, Integer, Hash)>] ApiResponseBoolean data, response status code and response headers
    def job_codes_delete_job_code_with_http_info(job_code_id, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobCodesApi.job_codes_delete_job_code ...'
      end
      # verify the required parameter 'job_code_id' is set
      if @api_client.config.client_side_validation && job_code_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_code_id' when calling JobCodesApi.job_codes_delete_job_code"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling JobCodesApi.job_codes_delete_job_code"
      end
      # resource path
      local_var_path = '/JobCodes/DeleteJobCode'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'JobCodeId'] = job_code_id

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
      return_type = opts[:return_type] || 'ApiResponseBoolean' 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobCodesApi#job_codes_delete_job_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a particular job code by job code id.    Requires 'SubmitTimesheets' or 'ManageJobsAndTasks' permissions.
    # @param job_code_id [Integer] The ID of the JobCode you want to get
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseJobCode]
    def job_codes_get_job_code_by_id(job_code_id, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = job_codes_get_job_code_by_id_with_http_info(job_code_id, x_chronosheets_auth, opts)
      data
    end

    # Get a particular job code by job code id.    Requires &#39;SubmitTimesheets&#39; or &#39;ManageJobsAndTasks&#39; permissions.
    # @param job_code_id [Integer] The ID of the JobCode you want to get
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseJobCode, Integer, Hash)>] ApiResponseJobCode data, response status code and response headers
    def job_codes_get_job_code_by_id_with_http_info(job_code_id, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobCodesApi.job_codes_get_job_code_by_id ...'
      end
      # verify the required parameter 'job_code_id' is set
      if @api_client.config.client_side_validation && job_code_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_code_id' when calling JobCodesApi.job_codes_get_job_code_by_id"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling JobCodesApi.job_codes_get_job_code_by_id"
      end
      # resource path
      local_var_path = '/JobCodes/GetJobCodeById'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'JobCodeId'] = job_code_id

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
      return_type = opts[:return_type] || 'ApiResponseJobCode' 

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
        @api_client.config.logger.debug "API called: JobCodesApi#job_codes_get_job_code_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get job codes for your organisation.    Requires 'SubmitTimesheets' or 'ManageJobsAndTasks' permissions.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseListJobCode]
    def job_codes_get_job_codes(x_chronosheets_auth, opts = {})
      data, _status_code, _headers = job_codes_get_job_codes_with_http_info(x_chronosheets_auth, opts)
      data
    end

    # Get job codes for your organisation.    Requires &#39;SubmitTimesheets&#39; or &#39;ManageJobsAndTasks&#39; permissions.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseListJobCode, Integer, Hash)>] ApiResponseListJobCode data, response status code and response headers
    def job_codes_get_job_codes_with_http_info(x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobCodesApi.job_codes_get_job_codes ...'
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling JobCodesApi.job_codes_get_job_codes"
      end
      # resource path
      local_var_path = '/JobCodes/GetJobCodes'

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
      return_type = opts[:return_type] || 'ApiResponseListJobCode' 

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
        @api_client.config.logger.debug "API called: JobCodesApi#job_codes_get_job_codes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a job code.    Requires the 'ManageJobsAndTask' permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [UpdateJobCodeRequest] A Update JobCode Request object containing updated fields.  Make sure to specify the JobCode Id in the request object so that ChronoSheets knows which JobCode to update
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseBoolean]
    def job_codes_update_job_code(x_chronosheets_auth, request, opts = {})
      data, _status_code, _headers = job_codes_update_job_code_with_http_info(x_chronosheets_auth, request, opts)
      data
    end

    # Update a job code.    Requires the &#39;ManageJobsAndTask&#39; permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [UpdateJobCodeRequest] A Update JobCode Request object containing updated fields.  Make sure to specify the JobCode Id in the request object so that ChronoSheets knows which JobCode to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseBoolean, Integer, Hash)>] ApiResponseBoolean data, response status code and response headers
    def job_codes_update_job_code_with_http_info(x_chronosheets_auth, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobCodesApi.job_codes_update_job_code ...'
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling JobCodesApi.job_codes_update_job_code"
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling JobCodesApi.job_codes_update_job_code"
      end
      # resource path
      local_var_path = '/JobCodes/UpdateJobCode'

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
      return_type = opts[:return_type] || 'ApiResponseBoolean' 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobCodesApi#job_codes_update_job_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
