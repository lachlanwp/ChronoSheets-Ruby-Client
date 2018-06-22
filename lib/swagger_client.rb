=begin
#ChronoSheets API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/cs_api_aggregate_job_code'
require 'swagger_client/models/cs_api_aggregate_job_task'
require 'swagger_client/models/cs_api_api_response_boolean'
require 'swagger_client/models/cs_api_api_response_client'
require 'swagger_client/models/cs_api_api_response_combined_reports_data'
require 'swagger_client/models/cs_api_api_response_do_login_response'
require 'swagger_client/models/cs_api_api_response_fleet_vehicle'
require 'swagger_client/models/cs_api_api_response_for_paginated_list_org_report_timesheet_file_attachment'
require 'swagger_client/models/cs_api_api_response_for_paginated_list_org_report_trip'
require 'swagger_client/models/cs_api_api_response_for_paginated_list_raw_report_item'
require 'swagger_client/models/cs_api_api_response_for_paginated_list_trip'
require 'swagger_client/models/cs_api_api_response_insert_user_response'
require 'swagger_client/models/cs_api_api_response_int32'
require 'swagger_client/models/cs_api_api_response_job_code'
require 'swagger_client/models/cs_api_api_response_list_aggregate_job_code'
require 'swagger_client/models/cs_api_api_response_list_client'
require 'swagger_client/models/cs_api_api_response_list_fleet_vehicle'
require 'swagger_client/models/cs_api_api_response_list_int32'
require 'swagger_client/models/cs_api_api_response_list_job_code'
require 'swagger_client/models/cs_api_api_response_list_job_series_report_item'
require 'swagger_client/models/cs_api_api_response_list_organisation_group'
require 'swagger_client/models/cs_api_api_response_list_project'
require 'swagger_client/models/cs_api_api_response_list_project_costing_report_item'
require 'swagger_client/models/cs_api_api_response_list_timesheet'
require 'swagger_client/models/cs_api_api_response_list_timesheet_task'
require 'swagger_client/models/cs_api_api_response_list_user_for_management'
require 'swagger_client/models/cs_api_api_response_list_user_hourly_rate'
require 'swagger_client/models/cs_api_api_response_list_user_job_favourite'
require 'swagger_client/models/cs_api_api_response_list_usual_hours_day'
require 'swagger_client/models/cs_api_api_response_organisation'
require 'swagger_client/models/cs_api_api_response_organisation_group'
require 'swagger_client/models/cs_api_api_response_project'
require 'swagger_client/models/cs_api_api_response_signup_response'
require 'swagger_client/models/cs_api_api_response_timesheet_task'
require 'swagger_client/models/cs_api_api_response_trip'
require 'swagger_client/models/cs_api_api_response_update_organisation_response'
require 'swagger_client/models/cs_api_api_response_update_user_response'
require 'swagger_client/models/cs_api_api_response_user_for_management'
require 'swagger_client/models/cs_api_api_response_user_profile'
require 'swagger_client/models/cs_api_batch_update_timesheet_request'
require 'swagger_client/models/cs_api_client'
require 'swagger_client/models/cs_api_client_series_report_item'
require 'swagger_client/models/cs_api_client_side_user'
require 'swagger_client/models/cs_api_client_totals_report_item'
require 'swagger_client/models/cs_api_combined_reports_data'
require 'swagger_client/models/cs_api_create_trip_request'
require 'swagger_client/models/cs_api_do_login_request'
require 'swagger_client/models/cs_api_do_login_response'
require 'swagger_client/models/cs_api_fleet_vehicle'
require 'swagger_client/models/cs_api_insert_client_request'
require 'swagger_client/models/cs_api_insert_job_code_request'
require 'swagger_client/models/cs_api_insert_organisation_group_request'
require 'swagger_client/models/cs_api_insert_project_request'
require 'swagger_client/models/cs_api_insert_task_request'
require 'swagger_client/models/cs_api_insert_user_hourly_rate_request'
require 'swagger_client/models/cs_api_insert_user_job_favourite_request'
require 'swagger_client/models/cs_api_insert_user_request'
require 'swagger_client/models/cs_api_insert_user_response'
require 'swagger_client/models/cs_api_insert_vehicle_request'
require 'swagger_client/models/cs_api_job_code'
require 'swagger_client/models/cs_api_job_series_report_item'
require 'swagger_client/models/cs_api_job_totals_report_item'
require 'swagger_client/models/cs_api_org_report_timesheet_file_attachment'
require 'swagger_client/models/cs_api_org_report_trip'
require 'swagger_client/models/cs_api_organisation'
require 'swagger_client/models/cs_api_organisation_group'
require 'swagger_client/models/cs_api_project'
require 'swagger_client/models/cs_api_project_costing_report_item'
require 'swagger_client/models/cs_api_project_series_report_item'
require 'swagger_client/models/cs_api_project_totals_report_item'
require 'swagger_client/models/cs_api_raw_report_item'
require 'swagger_client/models/cs_api_save_client_request'
require 'swagger_client/models/cs_api_save_organisation_group_request'
require 'swagger_client/models/cs_api_save_vehicle_request'
require 'swagger_client/models/cs_api_set_organisation_group_users_request'
require 'swagger_client/models/cs_api_set_usual_hours_request'
require 'swagger_client/models/cs_api_signup_response'
require 'swagger_client/models/cs_api_task_series_report_item'
require 'swagger_client/models/cs_api_task_totals_report_item'
require 'swagger_client/models/cs_api_time_slot'
require 'swagger_client/models/cs_api_timesheet'
require 'swagger_client/models/cs_api_timesheet_task'
require 'swagger_client/models/cs_api_trip'
require 'swagger_client/models/cs_api_trip_coordinate'
require 'swagger_client/models/cs_api_update_job_code_request'
require 'swagger_client/models/cs_api_update_my_profile_request'
require 'swagger_client/models/cs_api_update_organisation_request'
require 'swagger_client/models/cs_api_update_organisation_response'
require 'swagger_client/models/cs_api_update_project_request'
require 'swagger_client/models/cs_api_update_task_request'
require 'swagger_client/models/cs_api_update_user_request'
require 'swagger_client/models/cs_api_update_user_response'
require 'swagger_client/models/cs_api_user_for_management'
require 'swagger_client/models/cs_api_user_hourly_rate'
require 'swagger_client/models/cs_api_user_job_favourite'
require 'swagger_client/models/cs_api_user_profile'
require 'swagger_client/models/cs_api_usual_hours_day'

# APIs
require 'swagger_client/api/aggregate_job_tasks_api'
require 'swagger_client/api/clients_api'
require 'swagger_client/api/fleet_api'
require 'swagger_client/api/job_codes_api'
require 'swagger_client/api/organisation_api'
require 'swagger_client/api/organisation_group_users_api'
require 'swagger_client/api/organisation_groups_api'
require 'swagger_client/api/projects_api'
require 'swagger_client/api/reports_api'
require 'swagger_client/api/tasks_api'
require 'swagger_client/api/timesheets_api'
require 'swagger_client/api/trips_api'
require 'swagger_client/api/user_job_favourites_api'
require 'swagger_client/api/user_pay_rates_api'
require 'swagger_client/api/user_profile_api'
require 'swagger_client/api/users_api'
require 'swagger_client/api/usual_hours_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
