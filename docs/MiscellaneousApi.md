# WWW::OpenAPIClient::MiscellaneousApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MiscellaneousApi;
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instances_instance_key_misc_profile_pic_get**](MiscellaneousApi.md#instances_instance_key_misc_profile_pic_get) | **GET** /instances/{instance_key}/misc/profile-pic | Get profile pic.
[**instances_instance_key_misc_user_info_post**](MiscellaneousApi.md#instances_instance_key_misc_user_info_post) | **POST** /instances/{instance_key}/misc/user-info | Fetches the users info.


# **instances_instance_key_misc_profile_pic_get**
> APIResponse instances_instance_key_misc_profile_pic_get(instance_key => $instance_key, jid => $jid)

Get profile pic.

Returns the profile pic of the given user.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscellaneousApi;
my $api_instance = WWW::OpenAPIClient::MiscellaneousApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $jid = "jid_example"; # string | JID

eval {
    my $result = $api_instance->instances_instance_key_misc_profile_pic_get(instance_key => $instance_key, jid => $jid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscellaneousApi->instances_instance_key_misc_profile_pic_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **jid** | **string**| JID | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_misc_user_info_post**
> APIResponse instances_instance_key_misc_user_info_post(instance_key => $instance_key, data => $data)

Fetches the users info.

Gets the user info for the given user ids. This does not checks if user is registered or not

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MiscellaneousApi;
my $api_instance = WWW::OpenAPIClient::MiscellaneousApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::UserInfoPayload->new(); # UserInfoPayload | Data

eval {
    my $result = $api_instance->instances_instance_key_misc_user_info_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscellaneousApi->instances_instance_key_misc_user_info_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**UserInfoPayload**](UserInfoPayload.md)| Data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

