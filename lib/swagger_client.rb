=begin
#The ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 5 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  </p>  <p>      First Steps:       <ol>          <li>Make sure you've <a href='/HomeV2/App/sign-up'>signed up to ChronoSheets</a> to get yourself a user account</li>          <li>Confirm your account by following the link sent to your email address.  This will activate your account</li>          <li>Use your username and password to obtain an Auth Token by using the DoLogin method inside the UserProfile section below.  Use the Auth Token as an argument to the other methods</li>          <li>Try different methods in the API Playground to learn about the API</li>          <li>If you're stuck, try the full getting started guide on the <a href='/Home/ApiDocs'>API Toolkit</a> page.</li>      </ol>  </p>  <p>      Further Steps:       <ul>          <li>Create a mobile app (iOS, Android or Windows) using one of the ChronoSheets Mobile SDKs</li>          <li>Create a custom integration with your app using one of the ChronoSheets API Client Libraries.</li>      </ul>      Read more about the API Toolkit on the <a href='/Home/ApiDocs'>API Toolkit</a> page.  </p></div>

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
require 'swagger_client/models/cs_aggregate_job_code'
require 'swagger_client/models/cs_aggregate_job_task'
require 'swagger_client/models/cs_api_response_boolean'
require 'swagger_client/models/cs_api_response_client'
require 'swagger_client/models/cs_api_response_combined_reports_data'
require 'swagger_client/models/cs_api_response_do_login_response'
require 'swagger_client/models/cs_api_response_fleet_vehicle'
require 'swagger_client/models/cs_api_response_for_paginated_list_org_report_timesheet_file_attachment'
require 'swagger_client/models/cs_api_response_for_paginated_list_org_report_trip'
require 'swagger_client/models/cs_api_response_for_paginated_list_raw_report_item'
require 'swagger_client/models/cs_api_response_for_paginated_list_trip'
require 'swagger_client/models/cs_api_response_insert_user_response'
require 'swagger_client/models/cs_api_response_int32'
require 'swagger_client/models/cs_api_response_job_code'
require 'swagger_client/models/cs_api_response_list_aggregate_job_code'
require 'swagger_client/models/cs_api_response_list_client'
require 'swagger_client/models/cs_api_response_list_fleet_vehicle'
require 'swagger_client/models/cs_api_response_list_int32'
require 'swagger_client/models/cs_api_response_list_job_code'
require 'swagger_client/models/cs_api_response_list_job_series_report_item'
require 'swagger_client/models/cs_api_response_list_organisation_group'
require 'swagger_client/models/cs_api_response_list_project'
require 'swagger_client/models/cs_api_response_list_project_costing_report_item'
require 'swagger_client/models/cs_api_response_list_timesheet'
require 'swagger_client/models/cs_api_response_list_timesheet_task'
require 'swagger_client/models/cs_api_response_list_user_for_management'
require 'swagger_client/models/cs_api_response_list_user_hourly_rate'
require 'swagger_client/models/cs_api_response_list_user_job_favourite'
require 'swagger_client/models/cs_api_response_list_usual_hours_day'
require 'swagger_client/models/cs_api_response_organisation'
require 'swagger_client/models/cs_api_response_organisation_group'
require 'swagger_client/models/cs_api_response_project'
require 'swagger_client/models/cs_api_response_timesheet_task'
require 'swagger_client/models/cs_api_response_trip'
require 'swagger_client/models/cs_api_response_update_organisation_response'
require 'swagger_client/models/cs_api_response_update_profile_response'
require 'swagger_client/models/cs_api_response_update_user_response'
require 'swagger_client/models/cs_api_response_user_for_management'
require 'swagger_client/models/cs_api_response_user_profile'
require 'swagger_client/models/cs_batch_update_timesheet_request'
require 'swagger_client/models/cs_client'
require 'swagger_client/models/cs_client_series_report_item'
require 'swagger_client/models/cs_client_side_user'
require 'swagger_client/models/cs_client_totals_report_item'
require 'swagger_client/models/cs_combined_reports_data'
require 'swagger_client/models/cs_create_trip_request'
require 'swagger_client/models/cs_do_login_request'
require 'swagger_client/models/cs_do_login_response'
require 'swagger_client/models/cs_fleet_vehicle'
require 'swagger_client/models/cs_insert_client_request'
require 'swagger_client/models/cs_insert_job_code_request'
require 'swagger_client/models/cs_insert_organisation_group_request'
require 'swagger_client/models/cs_insert_project_request'
require 'swagger_client/models/cs_insert_task_request'
require 'swagger_client/models/cs_insert_user_hourly_rate_request'
require 'swagger_client/models/cs_insert_user_job_favourite_request'
require 'swagger_client/models/cs_insert_user_request'
require 'swagger_client/models/cs_insert_user_response'
require 'swagger_client/models/cs_insert_vehicle_request'
require 'swagger_client/models/cs_job_code'
require 'swagger_client/models/cs_job_series_report_item'
require 'swagger_client/models/cs_job_totals_report_item'
require 'swagger_client/models/cs_org_report_timesheet_file_attachment'
require 'swagger_client/models/cs_org_report_trip'
require 'swagger_client/models/cs_organisation'
require 'swagger_client/models/cs_organisation_group'
require 'swagger_client/models/cs_project'
require 'swagger_client/models/cs_project_costing_report_item'
require 'swagger_client/models/cs_project_series_report_item'
require 'swagger_client/models/cs_project_totals_report_item'
require 'swagger_client/models/cs_raw_report_item'
require 'swagger_client/models/cs_save_client_request'
require 'swagger_client/models/cs_save_organisation_group_request'
require 'swagger_client/models/cs_save_vehicle_request'
require 'swagger_client/models/cs_set_organisation_group_users_request'
require 'swagger_client/models/cs_set_usual_hours_request'
require 'swagger_client/models/cs_task_series_report_item'
require 'swagger_client/models/cs_task_totals_report_item'
require 'swagger_client/models/cs_time_slot'
require 'swagger_client/models/cs_timesheet'
require 'swagger_client/models/cs_timesheet_task'
require 'swagger_client/models/cs_trip'
require 'swagger_client/models/cs_trip_coordinate'
require 'swagger_client/models/cs_update_job_code_request'
require 'swagger_client/models/cs_update_my_profile_request'
require 'swagger_client/models/cs_update_organisation_request'
require 'swagger_client/models/cs_update_organisation_response'
require 'swagger_client/models/cs_update_profile_response'
require 'swagger_client/models/cs_update_project_request'
require 'swagger_client/models/cs_update_task_request'
require 'swagger_client/models/cs_update_user_request'
require 'swagger_client/models/cs_update_user_response'
require 'swagger_client/models/cs_user_for_management'
require 'swagger_client/models/cs_user_hourly_rate'
require 'swagger_client/models/cs_user_job_favourite'
require 'swagger_client/models/cs_user_profile'
require 'swagger_client/models/cs_usual_hours_day'

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
