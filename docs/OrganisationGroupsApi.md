# SwaggerClient::OrganisationGroupsApi

All URIs are relative to *https://www.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organisation_groups_create_organisation_group**](OrganisationGroupsApi.md#organisation_groups_create_organisation_group) | **PUT** /api/OrganisationGroups/CreateOrganisationGroup | Create an organisation group
[**organisation_groups_get_organisation_group**](OrganisationGroupsApi.md#organisation_groups_get_organisation_group) | **GET** /api/OrganisationGroups/GetOrganisationGroup | Get a particular organisation group
[**organisation_groups_get_organisation_groups**](OrganisationGroupsApi.md#organisation_groups_get_organisation_groups) | **GET** /api/OrganisationGroups/GetOrganisationGroups | Get a collection of organisation groups that are under your organisation
[**organisation_groups_get_organisation_groups_for_job**](OrganisationGroupsApi.md#organisation_groups_get_organisation_groups_for_job) | **GET** /api/OrganisationGroups/GetOrganisationGroupsForJob | Get org groups for a particular job
[**organisation_groups_get_organisation_groups_for_vehicle**](OrganisationGroupsApi.md#organisation_groups_get_organisation_groups_for_vehicle) | **GET** /api/OrganisationGroups/GetOrganisationGroupsForVehicle | Get org groups for a particular vehicle
[**organisation_groups_update_organisation_group**](OrganisationGroupsApi.md#organisation_groups_update_organisation_group) | **POST** /api/OrganisationGroups/UpdateOrganisationGroup | Update an organisation group


# **organisation_groups_create_organisation_group**
> CsApiApiResponseInt32 organisation_groups_create_organisation_group(request, x_chronosheets_auth)

Create an organisation group

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrganisationGroupsApi.new

request = SwaggerClient::CsApiInsertOrganisationGroupRequest.new # CsApiInsertOrganisationGroupRequest | 

x_chronosheets_auth = "x_chronosheets_auth_example" # String | The ChronoSheets Auth Token


begin
  #Create an organisation group
  result = api_instance.organisation_groups_create_organisation_group(request, x_chronosheets_auth)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrganisationGroupsApi->organisation_groups_create_organisation_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CsApiInsertOrganisationGroupRequest**](CsApiInsertOrganisationGroupRequest.md)|  | 
 **x_chronosheets_auth** | **String**| The ChronoSheets Auth Token | 

### Return type

[**CsApiApiResponseInt32**](CsApiApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **organisation_groups_get_organisation_group**
> CsApiApiResponseOrganisationGroup organisation_groups_get_organisation_group(organisation_group_id, x_chronosheets_auth)

Get a particular organisation group

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrganisationGroupsApi.new

organisation_group_id = 56 # Integer | The ID of the organisation group you want to get

x_chronosheets_auth = "x_chronosheets_auth_example" # String | The ChronoSheets Auth Token


begin
  #Get a particular organisation group
  result = api_instance.organisation_groups_get_organisation_group(organisation_group_id, x_chronosheets_auth)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrganisationGroupsApi->organisation_groups_get_organisation_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_group_id** | **Integer**| The ID of the organisation group you want to get | 
 **x_chronosheets_auth** | **String**| The ChronoSheets Auth Token | 

### Return type

[**CsApiApiResponseOrganisationGroup**](CsApiApiResponseOrganisationGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **organisation_groups_get_organisation_groups**
> CsApiApiResponseListOrganisationGroup organisation_groups_get_organisation_groups(x_chronosheets_auth)

Get a collection of organisation groups that are under your organisation

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrganisationGroupsApi.new

x_chronosheets_auth = "x_chronosheets_auth_example" # String | The ChronoSheets Auth Token


begin
  #Get a collection of organisation groups that are under your organisation
  result = api_instance.organisation_groups_get_organisation_groups(x_chronosheets_auth)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrganisationGroupsApi->organisation_groups_get_organisation_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_chronosheets_auth** | **String**| The ChronoSheets Auth Token | 

### Return type

[**CsApiApiResponseListOrganisationGroup**](CsApiApiResponseListOrganisationGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **organisation_groups_get_organisation_groups_for_job**
> CsApiApiResponseListOrganisationGroup organisation_groups_get_organisation_groups_for_job(job_id, x_chronosheets_auth)

Get org groups for a particular job

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrganisationGroupsApi.new

job_id = 56 # Integer | The ID of the job

x_chronosheets_auth = "x_chronosheets_auth_example" # String | The ChronoSheets Auth Token


begin
  #Get org groups for a particular job
  result = api_instance.organisation_groups_get_organisation_groups_for_job(job_id, x_chronosheets_auth)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrganisationGroupsApi->organisation_groups_get_organisation_groups_for_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **Integer**| The ID of the job | 
 **x_chronosheets_auth** | **String**| The ChronoSheets Auth Token | 

### Return type

[**CsApiApiResponseListOrganisationGroup**](CsApiApiResponseListOrganisationGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **organisation_groups_get_organisation_groups_for_vehicle**
> CsApiApiResponseListOrganisationGroup organisation_groups_get_organisation_groups_for_vehicle(vehicle_id, x_chronosheets_auth)

Get org groups for a particular vehicle

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrganisationGroupsApi.new

vehicle_id = 56 # Integer | The ID of the vehicle

x_chronosheets_auth = "x_chronosheets_auth_example" # String | The ChronoSheets Auth Token


begin
  #Get org groups for a particular vehicle
  result = api_instance.organisation_groups_get_organisation_groups_for_vehicle(vehicle_id, x_chronosheets_auth)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrganisationGroupsApi->organisation_groups_get_organisation_groups_for_vehicle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicle_id** | **Integer**| The ID of the vehicle | 
 **x_chronosheets_auth** | **String**| The ChronoSheets Auth Token | 

### Return type

[**CsApiApiResponseListOrganisationGroup**](CsApiApiResponseListOrganisationGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data



# **organisation_groups_update_organisation_group**
> CsApiApiResponseBoolean organisation_groups_update_organisation_group(request, x_chronosheets_auth)

Update an organisation group

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrganisationGroupsApi.new

request = SwaggerClient::CsApiSaveOrganisationGroupRequest.new # CsApiSaveOrganisationGroupRequest | 

x_chronosheets_auth = "x_chronosheets_auth_example" # String | The ChronoSheets Auth Token


begin
  #Update an organisation group
  result = api_instance.organisation_groups_update_organisation_group(request, x_chronosheets_auth)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrganisationGroupsApi->organisation_groups_update_organisation_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CsApiSaveOrganisationGroupRequest**](CsApiSaveOrganisationGroupRequest.md)|  | 
 **x_chronosheets_auth** | **String**| The ChronoSheets Auth Token | 

### Return type

[**CsApiApiResponseBoolean**](CsApiApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data


