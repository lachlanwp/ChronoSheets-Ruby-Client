=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

# Common files
require 'ChronoSheetsAPI/api_client'
require 'ChronoSheetsAPI/api_error'
require 'ChronoSheetsAPI/version'
require 'ChronoSheetsAPI/configuration'

# Models
require 'ChronoSheetsAPI/models/cs_aggregate_client'
require 'ChronoSheetsAPI/models/cs_aggregate_job_code'
require 'ChronoSheetsAPI/models/cs_aggregate_job_task'
require 'ChronoSheetsAPI/models/cs_aggregate_project'
require 'ChronoSheetsAPI/models/cs_api_response_boolean'
require 'ChronoSheetsAPI/models/cs_api_response_client'
require 'ChronoSheetsAPI/models/cs_api_response_combined_reports_data'
require 'ChronoSheetsAPI/models/cs_api_response_do_login_response'
require 'ChronoSheetsAPI/models/cs_api_response_fleet_vehicle'
require 'ChronoSheetsAPI/models/cs_api_response_for_paginated_list_extended_geofence'
require 'ChronoSheetsAPI/models/cs_api_response_for_paginated_list_org_report_timesheet_file_attachment'
require 'ChronoSheetsAPI/models/cs_api_response_for_paginated_list_org_report_transcript'
require 'ChronoSheetsAPI/models/cs_api_response_for_paginated_list_org_report_trip'
require 'ChronoSheetsAPI/models/cs_api_response_for_paginated_list_raw_report_item'
require 'ChronoSheetsAPI/models/cs_api_response_for_paginated_list_timesheet_file_attachment'
require 'ChronoSheetsAPI/models/cs_api_response_for_paginated_list_trip'
require 'ChronoSheetsAPI/models/cs_api_response_geofence'
require 'ChronoSheetsAPI/models/cs_api_response_insert_user_response'
require 'ChronoSheetsAPI/models/cs_api_response_int32'
require 'ChronoSheetsAPI/models/cs_api_response_job_code'
require 'ChronoSheetsAPI/models/cs_api_response_list_aggregate_client'
require 'ChronoSheetsAPI/models/cs_api_response_list_aggregate_job_code'
require 'ChronoSheetsAPI/models/cs_api_response_list_client'
require 'ChronoSheetsAPI/models/cs_api_response_list_fleet_summary_report_item'
require 'ChronoSheetsAPI/models/cs_api_response_list_fleet_vehicle'
require 'ChronoSheetsAPI/models/cs_api_response_list_int32'
require 'ChronoSheetsAPI/models/cs_api_response_list_job_code'
require 'ChronoSheetsAPI/models/cs_api_response_list_job_series_report_item'
require 'ChronoSheetsAPI/models/cs_api_response_list_organisation_group'
require 'ChronoSheetsAPI/models/cs_api_response_list_project'
require 'ChronoSheetsAPI/models/cs_api_response_list_project_costing_report_item'
require 'ChronoSheetsAPI/models/cs_api_response_list_timesheet'
require 'ChronoSheetsAPI/models/cs_api_response_list_timesheet_task'
require 'ChronoSheetsAPI/models/cs_api_response_list_user_for_management'
require 'ChronoSheetsAPI/models/cs_api_response_list_user_hourly_rate'
require 'ChronoSheetsAPI/models/cs_api_response_list_user_job_favourite'
require 'ChronoSheetsAPI/models/cs_api_response_list_usual_hours_day'
require 'ChronoSheetsAPI/models/cs_api_response_organisation'
require 'ChronoSheetsAPI/models/cs_api_response_organisation_group'
require 'ChronoSheetsAPI/models/cs_api_response_project'
require 'ChronoSheetsAPI/models/cs_api_response_timesheet_file_attachment'
require 'ChronoSheetsAPI/models/cs_api_response_timesheet_task'
require 'ChronoSheetsAPI/models/cs_api_response_transcription'
require 'ChronoSheetsAPI/models/cs_api_response_trip'
require 'ChronoSheetsAPI/models/cs_api_response_update_organisation_response'
require 'ChronoSheetsAPI/models/cs_api_response_update_profile_response'
require 'ChronoSheetsAPI/models/cs_api_response_update_user_response'
require 'ChronoSheetsAPI/models/cs_api_response_user_for_management'
require 'ChronoSheetsAPI/models/cs_api_response_user_profile'
require 'ChronoSheetsAPI/models/cs_basic_coordinate'
require 'ChronoSheetsAPI/models/cs_batch_update_timesheet_request'
require 'ChronoSheetsAPI/models/cs_client'
require 'ChronoSheetsAPI/models/cs_client_series_report_item'
require 'ChronoSheetsAPI/models/cs_client_side_user'
require 'ChronoSheetsAPI/models/cs_client_totals_report_item'
require 'ChronoSheetsAPI/models/cs_combined_reports_data'
require 'ChronoSheetsAPI/models/cs_create_automation_step_request'
require 'ChronoSheetsAPI/models/cs_create_geo_fence_request'
require 'ChronoSheetsAPI/models/cs_create_trip_request'
require 'ChronoSheetsAPI/models/cs_do_login_request'
require 'ChronoSheetsAPI/models/cs_do_login_response'
require 'ChronoSheetsAPI/models/cs_extended_geofence'
require 'ChronoSheetsAPI/models/cs_fleet_summary_report_item'
require 'ChronoSheetsAPI/models/cs_fleet_vehicle'
require 'ChronoSheetsAPI/models/cs_geofence'
require 'ChronoSheetsAPI/models/cs_insert_client_request'
require 'ChronoSheetsAPI/models/cs_insert_job_code_request'
require 'ChronoSheetsAPI/models/cs_insert_organisation_group_request'
require 'ChronoSheetsAPI/models/cs_insert_project_request'
require 'ChronoSheetsAPI/models/cs_insert_task_request'
require 'ChronoSheetsAPI/models/cs_insert_user_hourly_rate_request'
require 'ChronoSheetsAPI/models/cs_insert_user_job_favourite_request'
require 'ChronoSheetsAPI/models/cs_insert_user_request'
require 'ChronoSheetsAPI/models/cs_insert_user_response'
require 'ChronoSheetsAPI/models/cs_insert_vehicle_request'
require 'ChronoSheetsAPI/models/cs_job_code'
require 'ChronoSheetsAPI/models/cs_job_series_report_item'
require 'ChronoSheetsAPI/models/cs_job_totals_report_item'
require 'ChronoSheetsAPI/models/cs_org_report_timesheet_file_attachment'
require 'ChronoSheetsAPI/models/cs_org_report_transcript'
require 'ChronoSheetsAPI/models/cs_org_report_trip'
require 'ChronoSheetsAPI/models/cs_organisation'
require 'ChronoSheetsAPI/models/cs_organisation_group'
require 'ChronoSheetsAPI/models/cs_organisation_pricing_plan'
require 'ChronoSheetsAPI/models/cs_project'
require 'ChronoSheetsAPI/models/cs_project_costing_report_item'
require 'ChronoSheetsAPI/models/cs_project_series_report_item'
require 'ChronoSheetsAPI/models/cs_project_totals_report_item'
require 'ChronoSheetsAPI/models/cs_raw_report_item'
require 'ChronoSheetsAPI/models/cs_save_client_request'
require 'ChronoSheetsAPI/models/cs_save_organisation_group_request'
require 'ChronoSheetsAPI/models/cs_save_vehicle_request'
require 'ChronoSheetsAPI/models/cs_set_organisation_group_users_request'
require 'ChronoSheetsAPI/models/cs_set_usual_hours_request'
require 'ChronoSheetsAPI/models/cs_task_series_report_item'
require 'ChronoSheetsAPI/models/cs_task_totals_report_item'
require 'ChronoSheetsAPI/models/cs_time_slot'
require 'ChronoSheetsAPI/models/cs_timesheet'
require 'ChronoSheetsAPI/models/cs_timesheet_file_attachment'
require 'ChronoSheetsAPI/models/cs_timesheet_task'
require 'ChronoSheetsAPI/models/cs_transcription'
require 'ChronoSheetsAPI/models/cs_trip'
require 'ChronoSheetsAPI/models/cs_trip_coordinate'
require 'ChronoSheetsAPI/models/cs_update_geo_fence_request'
require 'ChronoSheetsAPI/models/cs_update_job_code_request'
require 'ChronoSheetsAPI/models/cs_update_my_profile_request'
require 'ChronoSheetsAPI/models/cs_update_organisation_request'
require 'ChronoSheetsAPI/models/cs_update_organisation_response'
require 'ChronoSheetsAPI/models/cs_update_profile_response'
require 'ChronoSheetsAPI/models/cs_update_project_request'
require 'ChronoSheetsAPI/models/cs_update_task_request'
require 'ChronoSheetsAPI/models/cs_update_user_request'
require 'ChronoSheetsAPI/models/cs_update_user_response'
require 'ChronoSheetsAPI/models/cs_user_for_management'
require 'ChronoSheetsAPI/models/cs_user_hourly_rate'
require 'ChronoSheetsAPI/models/cs_user_job_favourite'
require 'ChronoSheetsAPI/models/cs_user_profile'
require 'ChronoSheetsAPI/models/cs_usual_hours_day'

# APIs
require 'ChronoSheetsAPI/api/aggregate_client_projects_api'
require 'ChronoSheetsAPI/api/aggregate_job_tasks_api'
require 'ChronoSheetsAPI/api/clients_api'
require 'ChronoSheetsAPI/api/file_attachments_api'
require 'ChronoSheetsAPI/api/fleet_api'
require 'ChronoSheetsAPI/api/geo_fencing_api'
require 'ChronoSheetsAPI/api/job_codes_api'
require 'ChronoSheetsAPI/api/organisation_api'
require 'ChronoSheetsAPI/api/organisation_group_users_api'
require 'ChronoSheetsAPI/api/organisation_groups_api'
require 'ChronoSheetsAPI/api/projects_api'
require 'ChronoSheetsAPI/api/reports_api'
require 'ChronoSheetsAPI/api/tasks_api'
require 'ChronoSheetsAPI/api/timesheet_automation_api'
require 'ChronoSheetsAPI/api/timesheets_api'
require 'ChronoSheetsAPI/api/transcripts_api'
require 'ChronoSheetsAPI/api/trips_api'
require 'ChronoSheetsAPI/api/user_job_favourites_api'
require 'ChronoSheetsAPI/api/user_pay_rates_api'
require 'ChronoSheetsAPI/api/user_profile_api'
require 'ChronoSheetsAPI/api/users_api'
require 'ChronoSheetsAPI/api/usual_hours_api'

module ChronoSheetsAPI
  class << self
    # Customize default settings for the SDK using block.
    #   ChronoSheetsAPI.configure do |config|
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
