=begin
#ChronoSheets API

#ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 5 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.

OpenAPI spec version: v1
Contact: lachlan@chronosheets.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class FleetApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a vehicle
    # 
    # @param request 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseInt32]
    def fleet_create_vehicle(request, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = fleet_create_vehicle_with_http_info(request, x_chronosheets_auth, opts)
      return data
    end

    # Create a vehicle
    # 
    # @param request 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseInt32, Fixnum, Hash)>] CsApiApiResponseInt32 data, response status code and response headers
    def fleet_create_vehicle_with_http_info(request, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FleetApi.fleet_create_vehicle ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling FleetApi.fleet_create_vehicle"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling FleetApi.fleet_create_vehicle"
      end
      # resource path
      local_var_path = "/api/Fleet/CreateVehicle"

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CsApiApiResponseInt32')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#fleet_create_vehicle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a particular vehicle
    # 
    # @param vehicle_id The ID of the vehicle you want to get
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseFleetVehicle]
    def fleet_get_vehicle_by_id(vehicle_id, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = fleet_get_vehicle_by_id_with_http_info(vehicle_id, x_chronosheets_auth, opts)
      return data
    end

    # Get a particular vehicle
    # 
    # @param vehicle_id The ID of the vehicle you want to get
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseFleetVehicle, Fixnum, Hash)>] CsApiApiResponseFleetVehicle data, response status code and response headers
    def fleet_get_vehicle_by_id_with_http_info(vehicle_id, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FleetApi.fleet_get_vehicle_by_id ..."
      end
      # verify the required parameter 'vehicle_id' is set
      if @api_client.config.client_side_validation && vehicle_id.nil?
        fail ArgumentError, "Missing the required parameter 'vehicle_id' when calling FleetApi.fleet_get_vehicle_by_id"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling FleetApi.fleet_get_vehicle_by_id"
      end
      # resource path
      local_var_path = "/api/Fleet/GetVehicleById"

      # query parameters
      query_params = {}
      query_params[:'VehicleId'] = vehicle_id

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
        :return_type => 'CsApiApiResponseFleetVehicle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#fleet_get_vehicle_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a collection of vehicles that are under your organisation
    # 
    # @param include_deleted 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseListFleetVehicle]
    def fleet_get_vehicles(include_deleted, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = fleet_get_vehicles_with_http_info(include_deleted, x_chronosheets_auth, opts)
      return data
    end

    # Get a collection of vehicles that are under your organisation
    # 
    # @param include_deleted 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseListFleetVehicle, Fixnum, Hash)>] CsApiApiResponseListFleetVehicle data, response status code and response headers
    def fleet_get_vehicles_with_http_info(include_deleted, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FleetApi.fleet_get_vehicles ..."
      end
      # verify the required parameter 'include_deleted' is set
      if @api_client.config.client_side_validation && include_deleted.nil?
        fail ArgumentError, "Missing the required parameter 'include_deleted' when calling FleetApi.fleet_get_vehicles"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling FleetApi.fleet_get_vehicles"
      end
      # resource path
      local_var_path = "/api/Fleet/GetVehicles"

      # query parameters
      query_params = {}
      query_params[:'IncludeDeleted'] = include_deleted

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
        :return_type => 'CsApiApiResponseListFleetVehicle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#fleet_get_vehicles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a vehicle
    # 
    # @param request 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CsApiApiResponseBoolean]
    def fleet_update_vehicle(request, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = fleet_update_vehicle_with_http_info(request, x_chronosheets_auth, opts)
      return data
    end

    # Update a vehicle
    # 
    # @param request 
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CsApiApiResponseBoolean, Fixnum, Hash)>] CsApiApiResponseBoolean data, response status code and response headers
    def fleet_update_vehicle_with_http_info(request, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FleetApi.fleet_update_vehicle ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling FleetApi.fleet_update_vehicle"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling FleetApi.fleet_update_vehicle"
      end
      # resource path
      local_var_path = "/api/Fleet/UpdateVehicle"

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
        :return_type => 'CsApiApiResponseBoolean')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#fleet_update_vehicle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
