=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module ChronoSheetsAPI
  class OrganisationGroupUsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a collection of organisation group users that belong to an organisation group.    Requires the 'ManageOrganisationGroups' or 'ManageOrganisationUsers' permissions.
    # @param org_group_id [Integer] An OrganisationGroup Id
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseListUserForManagement]
    def organisation_group_users_get_organisation_group_users(org_group_id, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = organisation_group_users_get_organisation_group_users_with_http_info(org_group_id, x_chronosheets_auth, opts)
      data
    end

    # Get a collection of organisation group users that belong to an organisation group.    Requires the &#39;ManageOrganisationGroups&#39; or &#39;ManageOrganisationUsers&#39; permissions.
    # @param org_group_id [Integer] An OrganisationGroup Id
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseListUserForManagement, Integer, Hash)>] ApiResponseListUserForManagement data, response status code and response headers
    def organisation_group_users_get_organisation_group_users_with_http_info(org_group_id, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganisationGroupUsersApi.organisation_group_users_get_organisation_group_users ...'
      end
      # verify the required parameter 'org_group_id' is set
      if @api_client.config.client_side_validation && org_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_group_id' when calling OrganisationGroupUsersApi.organisation_group_users_get_organisation_group_users"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling OrganisationGroupUsersApi.organisation_group_users_get_organisation_group_users"
      end
      # resource path
      local_var_path = '/OrganisationGroupUsers/GetOrganisationGroupUsers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'orgGroupId'] = org_group_id

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
        @api_client.config.logger.debug "API called: OrganisationGroupUsersApi#organisation_group_users_get_organisation_group_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the users who belong to an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [SetOrganisationGroupUsersRequest] A request object specifying which users belong to an organisation group.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update. CsvUserIds is a comma separated list of User Ids, e.g. 1,2,3,4
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseBoolean]
    def organisation_group_users_update_organisation_group_users(x_chronosheets_auth, request, opts = {})
      data, _status_code, _headers = organisation_group_users_update_organisation_group_users_with_http_info(x_chronosheets_auth, request, opts)
      data
    end

    # Set the users who belong to an organisation group.    Requires the &#39;ManageOrganisationGroups&#39; permissions.
    # @param x_chronosheets_auth [String] The ChronoSheets Auth Token
    # @param request [SetOrganisationGroupUsersRequest] A request object specifying which users belong to an organisation group.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update. CsvUserIds is a comma separated list of User Ids, e.g. 1,2,3,4
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseBoolean, Integer, Hash)>] ApiResponseBoolean data, response status code and response headers
    def organisation_group_users_update_organisation_group_users_with_http_info(x_chronosheets_auth, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganisationGroupUsersApi.organisation_group_users_update_organisation_group_users ...'
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling OrganisationGroupUsersApi.organisation_group_users_update_organisation_group_users"
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling OrganisationGroupUsersApi.organisation_group_users_update_organisation_group_users"
      end
      # resource path
      local_var_path = '/OrganisationGroupUsers/UpdateOrganisationGroupUsers'

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
        @api_client.config.logger.debug "API called: OrganisationGroupUsersApi#organisation_group_users_update_organisation_group_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
