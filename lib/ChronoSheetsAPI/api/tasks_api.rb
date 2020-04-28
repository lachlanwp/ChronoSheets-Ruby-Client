=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module ChronoSheetsAPI
  class TasksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a task.    Requires the 'ManageJobsAndTask' permission.
    # @param request An Insert Task Request object containing values for the new Task to create
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CSApiResponseInt32]
    def tasks_create_task(request, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = tasks_create_task_with_http_info(request, x_chronosheets_auth, opts)
      data
    end

    # Create a task.    Requires the &#39;ManageJobsAndTask&#39; permission.
    # @param request An Insert Task Request object containing values for the new Task to create
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CSApiResponseInt32, Fixnum, Hash)>] CSApiResponseInt32 data, response status code and response headers
    def tasks_create_task_with_http_info(request, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_create_task ...'
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling TasksApi.tasks_create_task"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling TasksApi.tasks_create_task"
      end
      # resource path
      local_var_path = '/api/Tasks/CreateTask'

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
        @api_client.config.logger.debug "API called: TasksApi#tasks_create_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a task.    Requires the 'ManageJobsAndTask' permission.
    # @param task_id The ID of the Task you want to delete
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CSApiResponseBoolean]
    def tasks_delete_task(task_id, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = tasks_delete_task_with_http_info(task_id, x_chronosheets_auth, opts)
      data
    end

    # Delete a task.    Requires the &#39;ManageJobsAndTask&#39; permission.
    # @param task_id The ID of the Task you want to delete
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CSApiResponseBoolean, Fixnum, Hash)>] CSApiResponseBoolean data, response status code and response headers
    def tasks_delete_task_with_http_info(task_id, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_delete_task ...'
      end
      # verify the required parameter 'task_id' is set
      if @api_client.config.client_side_validation && task_id.nil?
        fail ArgumentError, "Missing the required parameter 'task_id' when calling TasksApi.tasks_delete_task"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling TasksApi.tasks_delete_task"
      end
      # resource path
      local_var_path = '/api/Tasks/DeleteTask'

      # query parameters
      query_params = {}
      query_params[:'TaskId'] = task_id

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CSApiResponseBoolean')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_delete_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a particular task by Id.   Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
    # @param task_id The ID of the TimesheetTask you want to get
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CSApiResponseTimesheetTask]
    def tasks_get_task_by_id(task_id, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = tasks_get_task_by_id_with_http_info(task_id, x_chronosheets_auth, opts)
      data
    end

    # Get a particular task by Id.   Requires the &#39;SubmitTimesheets&#39; or &#39;ManageJobsAndTask&#39; permissions.
    # @param task_id The ID of the TimesheetTask you want to get
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CSApiResponseTimesheetTask, Fixnum, Hash)>] CSApiResponseTimesheetTask data, response status code and response headers
    def tasks_get_task_by_id_with_http_info(task_id, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_get_task_by_id ...'
      end
      # verify the required parameter 'task_id' is set
      if @api_client.config.client_side_validation && task_id.nil?
        fail ArgumentError, "Missing the required parameter 'task_id' when calling TasksApi.tasks_get_task_by_id"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling TasksApi.tasks_get_task_by_id"
      end
      # resource path
      local_var_path = '/api/Tasks/GetTaskById'

      # query parameters
      query_params = {}
      query_params[:'TaskId'] = task_id

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
        :return_type => 'CSApiResponseTimesheetTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_get_task_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get tasks in your organisation.   Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CSApiResponseListTimesheetTask]
    def tasks_get_tasks(x_chronosheets_auth, opts = {})
      data, _status_code, _headers = tasks_get_tasks_with_http_info(x_chronosheets_auth, opts)
      data
    end

    # Get tasks in your organisation.   Requires the &#39;SubmitTimesheets&#39; or &#39;ManageJobsAndTask&#39; permissions.
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CSApiResponseListTimesheetTask, Fixnum, Hash)>] CSApiResponseListTimesheetTask data, response status code and response headers
    def tasks_get_tasks_with_http_info(x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_get_tasks ...'
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling TasksApi.tasks_get_tasks"
      end
      # resource path
      local_var_path = '/api/Tasks/GetTasks'

      # query parameters
      query_params = {}

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
        :return_type => 'CSApiResponseListTimesheetTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_get_tasks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a collection of tasks for a particular Job, specified by JobId.    Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
    # @param job_id The ID of the job
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CSApiResponseListTimesheetTask]
    def tasks_get_tasks_for_job(job_id, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = tasks_get_tasks_for_job_with_http_info(job_id, x_chronosheets_auth, opts)
      data
    end

    # Get a collection of tasks for a particular Job, specified by JobId.    Requires the &#39;SubmitTimesheets&#39; or &#39;ManageJobsAndTask&#39; permissions.
    # @param job_id The ID of the job
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CSApiResponseListTimesheetTask, Fixnum, Hash)>] CSApiResponseListTimesheetTask data, response status code and response headers
    def tasks_get_tasks_for_job_with_http_info(job_id, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_get_tasks_for_job ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling TasksApi.tasks_get_tasks_for_job"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling TasksApi.tasks_get_tasks_for_job"
      end
      # resource path
      local_var_path = '/api/Tasks/GetTasksForJob'

      # query parameters
      query_params = {}
      query_params[:'JobId'] = job_id

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
        :return_type => 'CSApiResponseListTimesheetTask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_get_tasks_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a task.    Requires the 'ManageJobsAndTask' permission.
    # @param request An Update Task Request object containing updated fields.  Make sure to specify the Task Id in the request object so that ChronoSheets knows which Task to update
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [CSApiResponseBoolean]
    def tasks_update_task(request, x_chronosheets_auth, opts = {})
      data, _status_code, _headers = tasks_update_task_with_http_info(request, x_chronosheets_auth, opts)
      data
    end

    # Update a task.    Requires the &#39;ManageJobsAndTask&#39; permission.
    # @param request An Update Task Request object containing updated fields.  Make sure to specify the Task Id in the request object so that ChronoSheets knows which Task to update
    # @param x_chronosheets_auth The ChronoSheets Auth Token
    # @param [Hash] opts the optional parameters
    # @return [Array<(CSApiResponseBoolean, Fixnum, Hash)>] CSApiResponseBoolean data, response status code and response headers
    def tasks_update_task_with_http_info(request, x_chronosheets_auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TasksApi.tasks_update_task ...'
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling TasksApi.tasks_update_task"
      end
      # verify the required parameter 'x_chronosheets_auth' is set
      if @api_client.config.client_side_validation && x_chronosheets_auth.nil?
        fail ArgumentError, "Missing the required parameter 'x_chronosheets_auth' when calling TasksApi.tasks_update_task"
      end
      # resource path
      local_var_path = '/api/Tasks/UpdateTask'

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
        :return_type => 'CSApiResponseBoolean')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#tasks_update_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
