# WWW::OpenAPIClient::InstanceApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::InstanceApi;
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_webhook_url**](InstanceApi.md#change_webhook_url) | **PUT** /instances/{instance_key}/webhook | Change Webhook url.
[**create_instance**](InstanceApi.md#create_instance) | **GET** /instances/create | Creates a new instance key.
[**delete_instance**](InstanceApi.md#delete_instance) | **DELETE** /instances/{instance_key}/delete | Delete Instance.
[**get_contacts**](InstanceApi.md#get_contacts) | **GET** /instances/{instance_key}/contacts | Get contacts.
[**get_instance**](InstanceApi.md#get_instance) | **GET** /instances/{instance_key}/ | Get Instance.
[**get_qr_code**](InstanceApi.md#get_qr_code) | **GET** /instances/{instance_key}/qrcode | Get QrCode.
[**list_instances**](InstanceApi.md#list_instances) | **GET** /instances/list | Get all instances.
[**logout_instance**](InstanceApi.md#logout_instance) | **DELETE** /instances/{instance_key}/logout | Logout Instance.


# **change_webhook_url**
> APIResponse change_webhook_url(instance_key => $instance_key, data => $data)

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
my $data = WWW::OpenAPIClient::Object::WebhookPayload->new(); # WebhookPayload | Message data

eval {
    my $result = $api_instance->change_webhook_url(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->change_webhook_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**WebhookPayload**](WebhookPayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_instance**
> APIResponse create_instance(instance_key => $instance_key)

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
    my $result = $api_instance->create_instance(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->create_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Insert instance key if you want to provide custom key | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_instance**
> APIResponse delete_instance(instance_key => $instance_key)

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
    my $result = $api_instance->delete_instance(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->delete_instance: $@\n";
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

# **get_contacts**
> APIResponse get_contacts(instance_key => $instance_key)

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
    my $result = $api_instance->get_contacts(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->get_contacts: $@\n";
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

# **get_instance**
> APIResponse get_instance(instance_key => $instance_key)

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
    my $result = $api_instance->get_instance(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->get_instance: $@\n";
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

# **get_qr_code**
> APIResponse get_qr_code(instance_key => $instance_key)

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
    my $result = $api_instance->get_qr_code(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->get_qr_code: $@\n";
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

# **list_instances**
> APIResponse list_instances()

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
    my $result = $api_instance->list_instances();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->list_instances: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout_instance**
> APIResponse logout_instance(instance_key => $instance_key)

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
    my $result = $api_instance->logout_instance(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InstanceApi->logout_instance: $@\n";
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

