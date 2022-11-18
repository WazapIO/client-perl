# WWW::OpenAPIClient::MiscellaneousApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MiscellaneousApi;
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_media**](MiscellaneousApi.md#download_media) | **POST** /instances/{instance_key}/misc/download | Download media
[**get_profile_pic**](MiscellaneousApi.md#get_profile_pic) | **GET** /instances/{instance_key}/misc/profile-pic | Get profile pic.
[**get_users_info**](MiscellaneousApi.md#get_users_info) | **POST** /instances/{instance_key}/misc/user-info | Fetches the users info.
[**set_chat_presence**](MiscellaneousApi.md#set_chat_presence) | **POST** /instances/{instance_key}/misc/chat-presence | Set chat presence
[**update_profile_pic**](MiscellaneousApi.md#update_profile_pic) | **PUT** /instances/{instance_key}/misc/profile-pic | Update profile picture


# **download_media**
> APIResponse download_media(instance_key => $instance_key, file_type => $file_type, data => $data, response_type => $response_type)

Download media

Downloads the media from the given media keys.

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
my $file_type = "file_type_example"; # string | File type
my $data = WWW::OpenAPIClient::Object::FileUpload->new(); # FileUpload | Media data
my $response_type = "response_type_example"; # string | Response type (file, base64)

eval {
    my $result = $api_instance->download_media(instance_key => $instance_key, file_type => $file_type, data => $data, response_type => $response_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscellaneousApi->download_media: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **file_type** | **string**| File type | 
 **data** | [**FileUpload**](FileUpload.md)| Media data | 
 **response_type** | **string**| Response type (file, base64) | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_profile_pic**
> APIResponse get_profile_pic(instance_key => $instance_key, jid => $jid)

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
    my $result = $api_instance->get_profile_pic(instance_key => $instance_key, jid => $jid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscellaneousApi->get_profile_pic: $@\n";
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

# **get_users_info**
> APIResponse get_users_info(instance_key => $instance_key, data => $data)

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
    my $result = $api_instance->get_users_info(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscellaneousApi->get_users_info: $@\n";
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

# **set_chat_presence**
> APIResponse set_chat_presence(instance_key => $instance_key, jid => $jid, presence => $presence)

Set chat presence

Sets the presence of the given chat. (Typing, Recording, Paused) Options: typing, recording, paused

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
my $presence = "presence_example"; # string | Presence

eval {
    my $result = $api_instance->set_chat_presence(instance_key => $instance_key, jid => $jid, presence => $presence);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscellaneousApi->set_chat_presence: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **jid** | **string**| JID | 
 **presence** | **string**| Presence | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_profile_pic**
> APIResponse update_profile_pic(instance_key => $instance_key, update_profile_pic_request => $update_profile_pic_request)

Update profile picture

Changes the profile pic of the current logged in user.

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
my $update_profile_pic_request = WWW::OpenAPIClient::Object::UpdateProfilePicRequest->new(); # UpdateProfilePicRequest | 

eval {
    my $result = $api_instance->update_profile_pic(instance_key => $instance_key, update_profile_pic_request => $update_profile_pic_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MiscellaneousApi->update_profile_pic: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **update_profile_pic_request** | [**UpdateProfilePicRequest**](UpdateProfilePicRequest.md)|  | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

