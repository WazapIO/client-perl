# WWW::OpenAPIClient::InstanceApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::InstanceApi;
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instances_create_get**](InstanceApi.md#instances_create_get) | **GET** /instances/create | Creates a new instance key.
[**instances_instance_key_contacts_get**](InstanceApi.md#instances_instance_key_contacts_get) | **GET** /instances/{instance_key}/contacts | Get contacts.
[**instances_instance_key_delete_delete**](InstanceApi.md#instances_instance_key_delete_delete) | **DELETE** /instances/{instance_key}/delete | Delete Instance.
[**instances_instance_key_get**](InstanceApi.md#instances_instance_key_get) | **GET** /instances/{instance_key}/ | Get Instance.
[**instances_instance_key_logout_delete**](InstanceApi.md#instances_instance_key_logout_delete) | **DELETE** /instances/{instance_key}/logout | Logout Instance.
[**instances_instance_key_qrcode_get**](InstanceApi.md#instances_instance_key_qrcode_get) | **GET** /instances/{instance_key}/qrcode | Get QrCode.
[**instances_instance_key_webhook_put**](InstanceApi.md#instances_instance_key_webhook_put) | **PUT** /instances/{instance_key}/webhook | Change Webhook url.
[**instances_list_get**](InstanceApi.md#instances_list_get) | **GET** /instances/list | Get all instances.


# **instances_create_get**
> MainAPIResponse instances_create_get(instance_key => $instance_key)

Creates a new instance key.

This endpoint is used to create a new WhatsApp Web instance.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InstanceApi;
my $api_instance = WWW::OpenAPIClient::InstanceApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Insert instance key if you want to provide custom key

eval {
    my $result = $api_instance->instances_create_get(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->instances_create_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Insert instance key if you want to provide custom key | [optional] 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_contacts_get**
> MainAPIResponse instances_instance_key_contacts_get(instance_key => $instance_key)

Get contacts.

Fetches the list of contacts in the instance.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InstanceApi;
my $api_instance = WWW::OpenAPIClient::InstanceApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key

eval {
    my $result = $api_instance->instances_instance_key_contacts_get(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->instances_instance_key_contacts_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_delete_delete**
> MainAPIResponse instances_instance_key_delete_delete(instance_key => $instance_key)

Delete Instance.

Deletes the instance with the provided key.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InstanceApi;
my $api_instance = WWW::OpenAPIClient::InstanceApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key

eval {
    my $result = $api_instance->instances_instance_key_delete_delete(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->instances_instance_key_delete_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_get**
> MainAPIResponse instances_instance_key_get(instance_key => $instance_key)

Get Instance.

Returns the instance data of single instance with connection status.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InstanceApi;
my $api_instance = WWW::OpenAPIClient::InstanceApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key

eval {
    my $result = $api_instance->instances_instance_key_get(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->instances_instance_key_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_logout_delete**
> MainAPIResponse instances_instance_key_logout_delete(instance_key => $instance_key)

Logout Instance.

Logouts of the instance with the provided key.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InstanceApi;
my $api_instance = WWW::OpenAPIClient::InstanceApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key

eval {
    my $result = $api_instance->instances_instance_key_logout_delete(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->instances_instance_key_logout_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_qrcode_get**
> MainAPIResponse instances_instance_key_qrcode_get(instance_key => $instance_key)

Get QrCode.

Returns the qrcode in the base64 format.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InstanceApi;
my $api_instance = WWW::OpenAPIClient::InstanceApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key

eval {
    my $result = $api_instance->instances_instance_key_qrcode_get(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->instances_instance_key_qrcode_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_webhook_put**
> MainAPIResponse instances_instance_key_webhook_put(instance_key => $instance_key, data => $data)

Change Webhook url.

Changes the webhook url of an instance.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InstanceApi;
my $api_instance = WWW::OpenAPIClient::InstanceApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::StructsWebhookPayload->new(); # StructsWebhookPayload | Message data

eval {
    my $result = $api_instance->instances_instance_key_webhook_put(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->instances_instance_key_webhook_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsWebhookPayload**](StructsWebhookPayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_list_get**
> MainAPIResponse instances_list_get()

Get all instances.

Fetches the list of all Instances with login status.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InstanceApi;
my $api_instance = WWW::OpenAPIClient::InstanceApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);


eval {
    my $result = $api_instance->instances_list_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->instances_list_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

