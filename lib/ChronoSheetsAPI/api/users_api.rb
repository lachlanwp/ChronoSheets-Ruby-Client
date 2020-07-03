=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module ChronoSheetsAPI
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a user account in your organisation.  Requires the 'ManageOrganisationUsers' permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [InsertUserRequest] An Insert User Request object containing values for the new User to create
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseInsertUserResponse]
    def users_create_timesheet_user(x_chronosheets_auth, request, opts = {})
      data, _status_code, _headers = users_create_timesheet_user_with_http_info(x_chronosheets_auth, request, opts)
      data
    end

    # Create a user account in your organisation.  Requires the &#39;ManageOrganisationUsers&#39; permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [InsertUserRequest] An Insert User Request object containing values for the new User to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseInsertUserResponse, Integer, Hash)>] ApiResponseInsertUserResponse data, response status code and response headers
    def users_create_timesheet_user_with_http_info(x_chronosheets_auth, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_create_timesheet_user ...'
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling UsersApi.users_create_timesheet_user"
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling UsersApi.users_create_timesheet_user"
      end
      # resource path
      local_var_path = '/Users/CreateTimesheetUser'

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
      return_type = opts[:return_type] || 'ApiResponseInsertUserResponse' 

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
        @api_client.config.logger.debug "API called: UsersApi#users_create_timesheet_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a particular user in your organisation.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationGroups' permissions.
    # @param user_id [Integer] The User ID of the UserForManagement you want to get
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseUserForManagement]
    def users_get_timesheet_user(user_id, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = users_get_timesheet_user_with_http_info(user_id, x_chronosheets_auth, opts)
      data
    end

    # Get a particular user in your organisation.  Requires the &#39;ManageOrganisationUsers&#39; or &#39;ManageOrganisationGroups&#39; permissions.
    # @param user_id [Integer] The User ID of the UserForManagement you want to get
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseUserForManagement, Integer, Hash)>] ApiResponseUserForManagement data, response status code and response headers
    def users_get_timesheet_user_with_http_info(user_id, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_get_timesheet_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.users_get_timesheet_user"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling UsersApi.users_get_timesheet_user"
      end
      # resource path
      local_var_path = '/Users/GetTimesheetUser'

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
      return_type = opts[:return_type] || 'ApiResponseUserForManagement' 

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
        @api_client.config.logger.debug "API called: UsersApi#users_get_timesheet_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get users accounts in your organisation.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationGroups' permissions.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseListUserForManagement]
    def users_get_timesheet_users(x_chronosheets_auth, opts = {})
      data, _status_code, _headers = users_get_timesheet_users_with_http_info(x_chronosheets_auth, opts)
      data
    end

    # Get users accounts in your organisation.  Requires the &#39;ManageOrganisationUsers&#39; or &#39;ManageOrganisationGroups&#39; permissions.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseListUserForManagement, Integer, Hash)>] ApiResponseListUserForManagement data, response status code and response headers
    def users_get_timesheet_users_with_http_info(x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_get_timesheet_users ...'
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling UsersApi.users_get_timesheet_users"
      end
      # resource path
      local_var_path = '/Users/GetTimesheetUsers'

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
      return_type = opts[:return_type] || 'ApiResponseListUserForManagement' 

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
        @api_client.config.logger.debug "API called: UsersApi#users_get_timesheet_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user account.  Requires the 'ManageOrganisationUsers' permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [UpdateUserRequest] A Update User Request object containing updated fields.  Make sure to specify the User Id in the request object so that ChronoSheets knows which User to update
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseUpdateUserResponse]
    def users_update_timesheet_user(x_chronosheets_auth, request, opts = {})
      data, _status_code, _headers = users_update_timesheet_user_with_http_info(x_chronosheets_auth, request, opts)
      data
    end

    # Update a user account.  Requires the &#39;ManageOrganisationUsers&#39; permission.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [UpdateUserRequest] A Update User Request object containing updated fields.  Make sure to specify the User Id in the request object so that ChronoSheets knows which User to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseUpdateUserResponse, Integer, Hash)>] ApiResponseUpdateUserResponse data, response status code and response headers
    def users_update_timesheet_user_with_http_info(x_chronosheets_auth, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.users_update_timesheet_user ...'
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling UsersApi.users_update_timesheet_user"
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling UsersApi.users_update_timesheet_user"
      end
      # resource path
      local_var_path = '/Users/UpdateTimesheetUser'

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
      return_type = opts[:return_type] || 'ApiResponseUpdateUserResponse' 

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
        @api_client.config.logger.debug "API called: UsersApi#users_update_timesheet_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
