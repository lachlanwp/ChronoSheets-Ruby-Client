# ChronoSheetsAPI::ApiResponseListFleetSummaryReportItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;FleetSummaryReportItem&gt;**](FleetSummaryReportItem.md) | The main Data of the response | [optional] |
| **status** | **String** | The API response status. Indicates if the request was successful, failed or was unauthorised. | [optional] |
| **message** | **String** | A message to accompany the response status.  If the Status is failed, this message will hint why it failed and what you need to do. | [optional] |

## Example

```ruby
require 'ChronoSheetsAPI'

instance = ChronoSheetsAPI::ApiResponseListFleetSummaryReportItem.new(
  data: null,
  status: null,
  message: null
)
```

