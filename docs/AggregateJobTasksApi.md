# SwaggerClient::AggregateJobTasksApi

All URIs are relative to *https://www.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aggregate_job_tasks_get_aggregate_job_tasks**](AggregateJobTasksApi.md#aggregate_job_tasks_get_aggregate_job_tasks) | **GET** /api/AggregateJobTasks/GetAggregateJobTasks | Get jobs and tasks information, aggregated


# **aggregate_job_tasks_get_aggregate_job_tasks**
> CsApiApiResponseListAggregateJobCode aggregate_job_tasks_get_aggregate_job_tasks(x_chronosheets_auth)

Get jobs and tasks information, aggregated

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AggregateJobTasksApi.new

x_chronosheets_auth = "x_chronosheets_auth_example" # String | The ChronoSheets Auth Token


begin
  #Get jobs and tasks information, aggregated
  result = api_instance.aggregate_job_tasks_get_aggregate_job_tasks(x_chronosheets_auth)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AggregateJobTasksApi->aggregate_job_tasks_get_aggregate_job_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_chronosheets_auth** | **String**| The ChronoSheets Auth Token | 

### Return type

[**CsApiApiResponseListAggregateJobCode**](CsApiApiResponseListAggregateJobCode.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data


