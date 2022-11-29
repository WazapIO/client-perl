# WWW::OpenAPIClient::MessageSendingApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MessageSendingApi;
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_audio**](MessageSendingApi.md#send_audio) | **POST** /instances/{instance_key}/send/audio | Send raw audio.
[**send_button_message**](MessageSendingApi.md#send_button_message) | **POST** /instances/{instance_key}/send/buttons | Send a button message.
[**send_button_with_media**](MessageSendingApi.md#send_button_with_media) | **POST** /instances/{instance_key}/send/button-media | Send a button message with a media header.
[**send_contact**](MessageSendingApi.md#send_contact) | **POST** /instances/{instance_key}/send/contact | Send a contact message.
[**send_document**](MessageSendingApi.md#send_document) | **POST** /instances/{instance_key}/send/document | Send raw document.
[**send_group_invite**](MessageSendingApi.md#send_group_invite) | **POST** /instances/{instance_key}/send/group-invite | Send a group invite message
[**send_image**](MessageSendingApi.md#send_image) | **POST** /instances/{instance_key}/send/image | Send raw image.
[**send_list_message**](MessageSendingApi.md#send_list_message) | **POST** /instances/{instance_key}/send/list | Send a List message.
[**send_location**](MessageSendingApi.md#send_location) | **POST** /instances/{instance_key}/send/location | Send a location message.
[**send_media_message**](MessageSendingApi.md#send_media_message) | **POST** /instances/{instance_key}/send/media | Send a media message.
[**send_poll_message**](MessageSendingApi.md#send_poll_message) | **POST** /instances/{instance_key}/send/poll | Send a Poll message.
[**send_template**](MessageSendingApi.md#send_template) | **POST** /instances/{instance_key}/send/template | Send a template message.
[**send_template_with_media**](MessageSendingApi.md#send_template_with_media) | **POST** /instances/{instance_key}/send/template-media | Send a template message with media.
[**send_text_message**](MessageSendingApi.md#send_text_message) | **POST** /instances/{instance_key}/send/text | Send a text message.
[**send_video**](MessageSendingApi.md#send_video) | **POST** /instances/{instance_key}/send/video | Send raw video.
[**upload_media**](MessageSendingApi.md#upload_media) | **POST** /instances/{instance_key}/send/upload | Upload media.
[**upload_media_from_url**](MessageSendingApi.md#upload_media_from_url) | **POST** /instances/{instance_key}/send/upload-url | Upload media from url.


# **send_audio**
> APIResponse send_audio(instance_key => $instance_key, to => $to, send_audio_request => $send_audio_request, caption => $caption)

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
my $send_audio_request = WWW::OpenAPIClient::Object::SendAudioRequest->new(); # SendAudioRequest | 
my $caption = "caption_example"; # string | Attached caption

eval {
    my $result = $api_instance->send_audio(instance_key => $instance_key, to => $to, send_audio_request => $send_audio_request, caption => $caption);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_audio: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **to** | **string**| The recipient&#39;s number | 
 **send_audio_request** | [**SendAudioRequest**](SendAudioRequest.md)|  | 
 **caption** | **string**| Attached caption | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_button_message**
> APIResponse send_button_message(instance_key => $instance_key, data => $data)

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
my $data = WWW::OpenAPIClient::Object::ButtonMessagePayload->new(); # ButtonMessagePayload | Message data

eval {
    my $result = $api_instance->send_button_message(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_button_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**ButtonMessagePayload**](ButtonMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_button_with_media**
> APIResponse send_button_with_media(instance_key => $instance_key, data => $data)

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
my $data = WWW::OpenAPIClient::Object::ButtonMessageWithMediaPayload->new(); # ButtonMessageWithMediaPayload | Message data

eval {
    my $result = $api_instance->send_button_with_media(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_button_with_media: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**ButtonMessageWithMediaPayload**](ButtonMessageWithMediaPayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_contact**
> APIResponse send_contact(instance_key => $instance_key, data => $data)

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
my $data = WWW::OpenAPIClient::Object::ContactMessagePayload->new(); # ContactMessagePayload | Message data

eval {
    my $result = $api_instance->send_contact(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_contact: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**ContactMessagePayload**](ContactMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_document**
> APIResponse send_document(instance_key => $instance_key, to => $to, send_document_request => $send_document_request, caption => $caption)

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
my $send_document_request = WWW::OpenAPIClient::Object::SendDocumentRequest->new(); # SendDocumentRequest | 
my $caption = "caption_example"; # string | Attached caption

eval {
    my $result = $api_instance->send_document(instance_key => $instance_key, to => $to, send_document_request => $send_document_request, caption => $caption);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_document: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **to** | **string**| The recipient&#39;s number | 
 **send_document_request** | [**SendDocumentRequest**](SendDocumentRequest.md)|  | 
 **caption** | **string**| Attached caption | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_group_invite**
> APIResponse send_group_invite(instance_key => $instance_key, data => $data)

Send a group invite message

Sends a group invite message to the specified number. Don't include \"https://chat.whatsapp.com/\" in the invite code.

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
my $data = WWW::OpenAPIClient::Object::GroupInviteMessagePayload->new(); # GroupInviteMessagePayload | Message data

eval {
    my $result = $api_instance->send_group_invite(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_group_invite: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**GroupInviteMessagePayload**](GroupInviteMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_image**
> APIResponse send_image(instance_key => $instance_key, to => $to, update_profile_pic_request => $update_profile_pic_request, caption => $caption)

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
my $update_profile_pic_request = WWW::OpenAPIClient::Object::UpdateProfilePicRequest->new(); # UpdateProfilePicRequest | 
my $caption = "caption_example"; # string | Attached caption

eval {
    my $result = $api_instance->send_image(instance_key => $instance_key, to => $to, update_profile_pic_request => $update_profile_pic_request, caption => $caption);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_image: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **to** | **string**| The recipient&#39;s number | 
 **update_profile_pic_request** | [**UpdateProfilePicRequest**](UpdateProfilePicRequest.md)|  | 
 **caption** | **string**| Attached caption | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_list_message**
> APIResponse send_list_message(instance_key => $instance_key, data => $data)

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
my $data = WWW::OpenAPIClient::Object::ListMessagePayload->new(); # ListMessagePayload | Message data

eval {
    my $result = $api_instance->send_list_message(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_list_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**ListMessagePayload**](ListMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_location**
> APIResponse send_location(instance_key => $instance_key, data => $data)

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
my $data = WWW::OpenAPIClient::Object::LocationMessagePayload->new(); # LocationMessagePayload | Message data

eval {
    my $result = $api_instance->send_location(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_location: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**LocationMessagePayload**](LocationMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_media_message**
> APIResponse send_media_message(instance_key => $instance_key, data => $data)

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
my $data = WWW::OpenAPIClient::Object::SendMediaPayload->new(); # SendMediaPayload | Message data

eval {
    my $result = $api_instance->send_media_message(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_media_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**SendMediaPayload**](SendMediaPayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_poll_message**
> APIResponse send_poll_message(instance_key => $instance_key, data => $data)

Send a Poll message.

Sends an interactive poll message to the given user. The poll message is a new feature that is currently in beta.

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
my $data = WWW::OpenAPIClient::Object::PollMessagePayload->new(); # PollMessagePayload | Message data

eval {
    my $result = $api_instance->send_poll_message(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_poll_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**PollMessagePayload**](PollMessagePayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_template**
> APIResponse send_template(instance_key => $instance_key, data => $data)

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
my $data = WWW::OpenAPIClient::Object::TemplateButtonPayload->new(); # TemplateButtonPayload | Message data

eval {
    my $result = $api_instance->send_template(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**TemplateButtonPayload**](TemplateButtonPayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_template_with_media**
> APIResponse send_template_with_media(instance_key => $instance_key, data => $data)

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
my $data = WWW::OpenAPIClient::Object::TemplateButtonWithMediaPayload->new(); # TemplateButtonWithMediaPayload | Message data

eval {
    my $result = $api_instance->send_template_with_media(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_template_with_media: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**TemplateButtonWithMediaPayload**](TemplateButtonWithMediaPayload.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_text_message**
> APIResponse send_text_message(instance_key => $instance_key, data => $data)

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
my $data = WWW::OpenAPIClient::Object::TextMessage->new(); # TextMessage | Message data

eval {
    my $result = $api_instance->send_text_message(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_text_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**TextMessage**](TextMessage.md)| Message data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_video**
> APIResponse send_video(instance_key => $instance_key, to => $to, send_video_request => $send_video_request, caption => $caption)

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
my $send_video_request = WWW::OpenAPIClient::Object::SendVideoRequest->new(); # SendVideoRequest | 
my $caption = "caption_example"; # string | Attached caption

eval {
    my $result = $api_instance->send_video(instance_key => $instance_key, to => $to, send_video_request => $send_video_request, caption => $caption);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->send_video: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **to** | **string**| The recipient&#39;s number | 
 **send_video_request** | [**SendVideoRequest**](SendVideoRequest.md)|  | 
 **caption** | **string**| Attached caption | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upload_media**
> APIResponse upload_media(instance_key => $instance_key, type => $type, upload_media_request => $upload_media_request)

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
my $upload_media_request = WWW::OpenAPIClient::Object::UploadMediaRequest->new(); # UploadMediaRequest | 

eval {
    my $result = $api_instance->upload_media(instance_key => $instance_key, type => $type, upload_media_request => $upload_media_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->upload_media: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **type** | **string**| Media type | 
 **upload_media_request** | [**UploadMediaRequest**](UploadMediaRequest.md)|  | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upload_media_from_url**
> APIResponse upload_media_from_url(instance_key => $instance_key, type => $type, data => $data)

Upload media from url.

Uploads media from a url to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages

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
my $data = WWW::OpenAPIClient::Object::UrlMediaUploadPayload->new(); # UrlMediaUploadPayload | Media data

eval {
    my $result = $api_instance->upload_media_from_url(instance_key => $instance_key, type => $type, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MessageSendingApi->upload_media_from_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **type** | **string**| Media type | 
 **data** | [**UrlMediaUploadPayload**](UrlMediaUploadPayload.md)| Media data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

