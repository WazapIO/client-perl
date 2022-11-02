# WWW::OpenAPIClient::MessageSendingApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MessageSendingApi;
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instances_instance_key_business_catalog_get**](MessageSendingApi.md#instances_instance_key_business_catalog_get) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog.
[**instances_instance_key_send_audio_post**](MessageSendingApi.md#instances_instance_key_send_audio_post) | **POST** /instances/{instance_key}/send/audio | Send raw audio.
[**instances_instance_key_send_button_media_post**](MessageSendingApi.md#instances_instance_key_send_button_media_post) | **POST** /instances/{instance_key}/send/button-media | Send a button message with a media header.
[**instances_instance_key_send_buttons_post**](MessageSendingApi.md#instances_instance_key_send_buttons_post) | **POST** /instances/{instance_key}/send/buttons | Send a button message.
[**instances_instance_key_send_contact_post**](MessageSendingApi.md#instances_instance_key_send_contact_post) | **POST** /instances/{instance_key}/send/contact | Send a contact message.
[**instances_instance_key_send_document_post**](MessageSendingApi.md#instances_instance_key_send_document_post) | **POST** /instances/{instance_key}/send/document | Send raw document.
[**instances_instance_key_send_image_post**](MessageSendingApi.md#instances_instance_key_send_image_post) | **POST** /instances/{instance_key}/send/image | Send raw image.
[**instances_instance_key_send_list_post**](MessageSendingApi.md#instances_instance_key_send_list_post) | **POST** /instances/{instance_key}/send/list | Send a List message.
[**instances_instance_key_send_location_post**](MessageSendingApi.md#instances_instance_key_send_location_post) | **POST** /instances/{instance_key}/send/location | Send a location message.
[**instances_instance_key_send_media_post**](MessageSendingApi.md#instances_instance_key_send_media_post) | **POST** /instances/{instance_key}/send/media | Send a media message.
[**instances_instance_key_send_poll_post**](MessageSendingApi.md#instances_instance_key_send_poll_post) | **POST** /instances/{instance_key}/send/poll | Send a Poll message with media.
[**instances_instance_key_send_template_media_post**](MessageSendingApi.md#instances_instance_key_send_template_media_post) | **POST** /instances/{instance_key}/send/template-media | Send a template message with media.
[**instances_instance_key_send_template_post**](MessageSendingApi.md#instances_instance_key_send_template_post) | **POST** /instances/{instance_key}/send/template | Send a template message.
[**instances_instance_key_send_text_post**](MessageSendingApi.md#instances_instance_key_send_text_post) | **POST** /instances/{instance_key}/send/text | Send a text message.
[**instances_instance_key_send_upload_post**](MessageSendingApi.md#instances_instance_key_send_upload_post) | **POST** /instances/{instance_key}/send/upload | Upload media.
[**instances_instance_key_send_video_post**](MessageSendingApi.md#instances_instance_key_send_video_post) | **POST** /instances/{instance_key}/send/video | Send raw video.


# **instances_instance_key_business_catalog_get**
> MainAPIResponse instances_instance_key_business_catalog_get(instance_key => $instance_key)

Fetches the catlog.

Gets list of all products registered by you.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key

eval {
    my $result = $api_instance->instances_instance_key_business_catalog_get(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_business_catalog_get: $@\n";
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

# **instances_instance_key_send_audio_post**
> MainAPIResponse instances_instance_key_send_audio_post(instance_key => $instance_key, to => $to, instances_instance_key_send_audio_post_request => $instances_instance_key_send_audio_post_request, caption => $caption)

Send raw audio.

Sends a audio message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $to = "to_example"; # string | The recipient's number
my $instances_instance_key_send_audio_post_request = WWW::OpenAPIClient::Object::InstancesInstanceKeySendAudioPostRequest->new(); # InstancesInstanceKeySendAudioPostRequest | 
my $caption = "caption_example"; # string | Attached caption

eval {
    my $result = $api_instance->instances_instance_key_send_audio_post(instance_key => $instance_key, to => $to, instances_instance_key_send_audio_post_request => $instances_instance_key_send_audio_post_request, caption => $caption);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_audio_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **to** | **string**| The recipient&#39;s number | 
 **instances_instance_key_send_audio_post_request** | [**InstancesInstanceKeySendAudioPostRequest**](InstancesInstanceKeySendAudioPostRequest.md)|  | 
 **caption** | **string**| Attached caption | [optional] 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_button_media_post**
> MainAPIResponse instances_instance_key_send_button_media_post(instance_key => $instance_key, data => $data)

Send a button message with a media header.

Sends an interactive button message to the given user. This message also has media header with it. Make sure that all the button ids are unique

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::StructsButtonMessageWithMediaPayload->new(); # StructsButtonMessageWithMediaPayload | Message data

eval {
    my $result = $api_instance->instances_instance_key_send_button_media_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_button_media_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsButtonMessageWithMediaPayload**](StructsButtonMessageWithMediaPayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_buttons_post**
> MainAPIResponse instances_instance_key_send_buttons_post(instance_key => $instance_key, data => $data)

Send a button message.

Sends an interactive button message to the given user. Make sure that all the button ids are unique

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::StructsButtonMessagePayload->new(); # StructsButtonMessagePayload | Message data

eval {
    my $result = $api_instance->instances_instance_key_send_buttons_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_buttons_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsButtonMessagePayload**](StructsButtonMessagePayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_contact_post**
> MainAPIResponse instances_instance_key_send_contact_post(instance_key => $instance_key, data => $data)

Send a contact message.

Sends a contact (vcard) message to the given user.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::StructsContactMessagePayload->new(); # StructsContactMessagePayload | Message data

eval {
    my $result = $api_instance->instances_instance_key_send_contact_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_contact_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsContactMessagePayload**](StructsContactMessagePayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_document_post**
> MainAPIResponse instances_instance_key_send_document_post(instance_key => $instance_key, to => $to, instances_instance_key_send_document_post_request => $instances_instance_key_send_document_post_request, caption => $caption)

Send raw document.

Sends a document message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $to = "to_example"; # string | The recipient's number
my $instances_instance_key_send_document_post_request = WWW::OpenAPIClient::Object::InstancesInstanceKeySendDocumentPostRequest->new(); # InstancesInstanceKeySendDocumentPostRequest | 
my $caption = "caption_example"; # string | Attached caption

eval {
    my $result = $api_instance->instances_instance_key_send_document_post(instance_key => $instance_key, to => $to, instances_instance_key_send_document_post_request => $instances_instance_key_send_document_post_request, caption => $caption);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_document_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **to** | **string**| The recipient&#39;s number | 
 **instances_instance_key_send_document_post_request** | [**InstancesInstanceKeySendDocumentPostRequest**](InstancesInstanceKeySendDocumentPostRequest.md)|  | 
 **caption** | **string**| Attached caption | [optional] 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_image_post**
> MainAPIResponse instances_instance_key_send_image_post(instance_key => $instance_key, to => $to, instances_instance_key_send_image_post_request => $instances_instance_key_send_image_post_request, caption => $caption)

Send raw image.

Sends a image message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $to = "to_example"; # string | The recipient's number
my $instances_instance_key_send_image_post_request = WWW::OpenAPIClient::Object::InstancesInstanceKeySendImagePostRequest->new(); # InstancesInstanceKeySendImagePostRequest | 
my $caption = "caption_example"; # string | Attached caption

eval {
    my $result = $api_instance->instances_instance_key_send_image_post(instance_key => $instance_key, to => $to, instances_instance_key_send_image_post_request => $instances_instance_key_send_image_post_request, caption => $caption);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_image_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **to** | **string**| The recipient&#39;s number | 
 **instances_instance_key_send_image_post_request** | [**InstancesInstanceKeySendImagePostRequest**](InstancesInstanceKeySendImagePostRequest.md)|  | 
 **caption** | **string**| Attached caption | [optional] 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_list_post**
> MainAPIResponse instances_instance_key_send_list_post(instance_key => $instance_key, data => $data)

Send a List message.

Sends an interactive List message to the given user.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::StructsListMessagePayload->new(); # StructsListMessagePayload | Message data

eval {
    my $result = $api_instance->instances_instance_key_send_list_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_list_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsListMessagePayload**](StructsListMessagePayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_location_post**
> MainAPIResponse instances_instance_key_send_location_post(instance_key => $instance_key, data => $data)

Send a location message.

Sends a location message to the given user. This is static location and does not update Note: The Address and Url fields are optional

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::StructsLocationMessagePayload->new(); # StructsLocationMessagePayload | Message data

eval {
    my $result = $api_instance->instances_instance_key_send_location_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_location_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsLocationMessagePayload**](StructsLocationMessagePayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_media_post**
> MainAPIResponse instances_instance_key_send_media_post(instance_key => $instance_key, data => $data)

Send a media message.

Sends a media message to the given user.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::StructsSendMediaPayload->new(); # StructsSendMediaPayload | Message data

eval {
    my $result = $api_instance->instances_instance_key_send_media_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_media_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsSendMediaPayload**](StructsSendMediaPayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_poll_post**
> MainAPIResponse instances_instance_key_send_poll_post(instance_key => $instance_key, data => $data)

Send a Poll message with media.

Sends an interactive poll message with a media header to the given user. The poll message is a new feature that is currently in beta.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::StructsPollMessagePayload->new(); # StructsPollMessagePayload | Message data

eval {
    my $result = $api_instance->instances_instance_key_send_poll_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_poll_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsPollMessagePayload**](StructsPollMessagePayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_template_media_post**
> MainAPIResponse instances_instance_key_send_template_media_post(instance_key => $instance_key, data => $data)

Send a template message with media.

Sends an interactive template message with a media header to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::StructsTemplateButtonWithMediaPayload->new(); # StructsTemplateButtonWithMediaPayload | Message data

eval {
    my $result = $api_instance->instances_instance_key_send_template_media_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_template_media_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsTemplateButtonWithMediaPayload**](StructsTemplateButtonWithMediaPayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_template_post**
> MainAPIResponse instances_instance_key_send_template_post(instance_key => $instance_key, data => $data)

Send a template message.

Sends an interactive template message to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::StructsTemplateButtonPayload->new(); # StructsTemplateButtonPayload | Message data

eval {
    my $result = $api_instance->instances_instance_key_send_template_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_template_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsTemplateButtonPayload**](StructsTemplateButtonPayload.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_text_post**
> MainAPIResponse instances_instance_key_send_text_post(instance_key => $instance_key, data => $data)

Send a text message.

Sends a text message to the given user.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::StructsTextMessage->new(); # StructsTextMessage | Message data

eval {
    my $result = $api_instance->instances_instance_key_send_text_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_text_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsTextMessage**](StructsTextMessage.md)| Message data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_upload_post**
> MainAPIResponse instances_instance_key_send_upload_post(instance_key => $instance_key, type => $type, instances_instance_key_send_upload_post_request => $instances_instance_key_send_upload_post_request)

Upload media.

Uploads media to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $type = "type_example"; # string | Media type
my $instances_instance_key_send_upload_post_request = WWW::OpenAPIClient::Object::InstancesInstanceKeySendUploadPostRequest->new(); # InstancesInstanceKeySendUploadPostRequest | 

eval {
    my $result = $api_instance->instances_instance_key_send_upload_post(instance_key => $instance_key, type => $type, instances_instance_key_send_upload_post_request => $instances_instance_key_send_upload_post_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_upload_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **type** | **string**| Media type | 
 **instances_instance_key_send_upload_post_request** | [**InstancesInstanceKeySendUploadPostRequest**](InstancesInstanceKeySendUploadPostRequest.md)|  | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_send_video_post**
> MainAPIResponse instances_instance_key_send_video_post(instance_key => $instance_key, to => $to, instances_instance_key_send_video_post_request => $instances_instance_key_send_video_post_request, caption => $caption)

Send raw video.

Sends a video message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MessageSendingApi;
my $api_instance = WWW::OpenAPIClient::MessageSendingApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $to = "to_example"; # string | The recipient's number
my $instances_instance_key_send_video_post_request = WWW::OpenAPIClient::Object::InstancesInstanceKeySendVideoPostRequest->new(); # InstancesInstanceKeySendVideoPostRequest | 
my $caption = "caption_example"; # string | Attached caption

eval {
    my $result = $api_instance->instances_instance_key_send_video_post(instance_key => $instance_key, to => $to, instances_instance_key_send_video_post_request => $instances_instance_key_send_video_post_request, caption => $caption);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->instances_instance_key_send_video_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **to** | **string**| The recipient&#39;s number | 
 **instances_instance_key_send_video_post_request** | [**InstancesInstanceKeySendVideoPostRequest**](InstancesInstanceKeySendVideoPostRequest.md)|  | 
 **caption** | **string**| Attached caption | [optional] 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

