# WWW::OpenAPIClient::BusinessManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::BusinessManagementApi;
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_catlog**](BusinessManagementApi.md#fetch_catlog) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog.


# **fetch_catlog**
> APIResponse fetch_catlog(instance_key => $instance_key)

Fetches the catlog.

Gets list of all products registered by you.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BusinessManagementApi;
my $api_instance = WWW::OpenAPIClient::BusinessManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key

eval {
    my $result = $api_instance->fetch_catlog(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BusinessManagementApi->fetch_catlog: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

