# ChronoSheetsAPI::CreateGeoFenceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the geo fence | [optional] |
| **fence_coordinates** | [**Array&lt;BasicCoordinate&gt;**](BasicCoordinate.md) | A list of coordinates specifying the geofence region | [optional] |
| **trigger_job_code_id** | **Integer** | The job code to be used when the person enters/leaves the geofence | [optional] |
| **trigger_task_id** | **Integer** | The task to be used when the person enters/leaves the geofence | [optional] |
| **send_alert_to_org_group_id** | **Integer** | Send an alert to a user, specified by their user ID | [optional] |
| **alert_settings** | **String** | Define when you want the alerts to be sent | [optional] |
| **trigger_settings** | **String** | Define how to you want to trigger the timesheet automation | [optional] |
| **start_time_hour** | **Integer** | The start hour in which this geofence should apply.  After this time, the geofence will be active. | [optional] |
| **start_time_minute** | **Integer** | The start minute in which this geofence should apply.  After this time, the geofence will be active. | [optional] |
| **end_time_hour** | **Integer** | The end hour in which this geofence will stop applying.  After this time, the geofence will be inactive. | [optional] |
| **end_time_minute** | **Integer** | The end minute in which this geofence will stop applying.  After this time, the geofence will be inactive. | [optional] |

## Example

```ruby
require 'ChronoSheetsAPI'

instance = ChronoSheetsAPI::CreateGeoFenceRequest.new(
  name: null,
  fence_coordinates: null,
  trigger_job_code_id: null,
  trigger_task_id: null,
  send_alert_to_org_group_id: null,
  alert_settings: null,
  trigger_settings: null,
  start_time_hour: null,
  start_time_minute: null,
  end_time_hour: null,
  end_time_minute: null
)
```

