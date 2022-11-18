# WWW::OpenAPIClient::GroupManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::GroupManagementApi;
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_participant**](GroupManagementApi.md#add_participant) | **POST** /instances/{instance_key}/groups/{group_id}/participants/add | Add participant.
[**create_group**](GroupManagementApi.md#create_group) | **POST** /instances/{instance_key}/groups/create | Create group.
[**demote_participant**](GroupManagementApi.md#demote_participant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/demote | Demote participant.
[**get_admin_groups**](GroupManagementApi.md#get_admin_groups) | **GET** /instances/{instance_key}/groups/admin | Get admin groups.
[**get_all_groups**](GroupManagementApi.md#get_all_groups) | **GET** /instances/{instance_key}/groups/ | Get all groups.
[**get_all_participants**](GroupManagementApi.md#get_all_participants) | **GET** /instances/{instance_key}/groups/{group_id}/participants | Get all participants.
[**get_group**](GroupManagementApi.md#get_group) | **GET** /instances/{instance_key}/groups/{group_id} | Get group.
[**get_group_from_invite_link**](GroupManagementApi.md#get_group_from_invite_link) | **GET** /instances/{instance_key}/groups/invite-info | Get group from invite link.
[**get_group_invite_code**](GroupManagementApi.md#get_group_invite_code) | **GET** /instances/{instance_key}/groups/{group_id}/invite-code | Get group invite code.
[**join_group_with_link**](GroupManagementApi.md#join_group_with_link) | **GET** /instances/{instance_key}/groups/join | Join group with invite code.
[**leave_group**](GroupManagementApi.md#leave_group) | **DELETE** /instances/{instance_key}/groups/{group_id}/ | Leaves the group.
[**promote_participant**](GroupManagementApi.md#promote_participant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/promote | Promote participant.
[**remove_participant**](GroupManagementApi.md#remove_participant) | **DELETE** /instances/{instance_key}/groups/{group_id}/participants/remove | Remove participant.
[**set_group_announce**](GroupManagementApi.md#set_group_announce) | **PUT** /instances/{instance_key}/groups/{group_id}/announce | Set group announce.
[**set_group_description**](GroupManagementApi.md#set_group_description) | **PUT** /instances/{instance_key}/groups/{group_id}/description | Set group description.
[**set_group_locked**](GroupManagementApi.md#set_group_locked) | **PUT** /instances/{instance_key}/groups/{group_id}/lock | Set group locked.
[**set_group_name**](GroupManagementApi.md#set_group_name) | **PUT** /instances/{instance_key}/groups/{group_id}/name | Set group name.
[**set_group_picture**](GroupManagementApi.md#set_group_picture) | **PUT** /instances/{instance_key}/groups/{group_id}/profile-pic | Set group picture.


# **add_participant**
> APIResponse add_participant(instance_key => $instance_key, group_id => $group_id, data => $data)

Add participant.

Handles adding participants to a group. You must be admin in the group or the query will fail.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $group_id = "group_id_example"; # string | Group id of the group
my $data = WWW::OpenAPIClient::Object::GroupUpdateParticipantsPayload->new(); # GroupUpdateParticipantsPayload | Group update payload

eval {
    my $result = $api_instance->add_participant(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->add_participant: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_group**
> APIResponse create_group(instance_key => $instance_key, data => $data)

Create group.

Creates a group with the participant data. The creator is automatically added to the group.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $data = WWW::OpenAPIClient::Object::GroupCreatePayload->new(); # GroupCreatePayload | Group create payload

eval {
    my $result = $api_instance->create_group(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->create_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**GroupCreatePayload**](GroupCreatePayload.md)| Group create payload | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **demote_participant**
> APIResponse demote_participant(instance_key => $instance_key, group_id => $group_id, data => $data)

Demote participant.

Demotes admins in groups. You must be admin in the group or the query will fail.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $group_id = "group_id_example"; # string | Group id of the group
my $data = WWW::OpenAPIClient::Object::GroupUpdateParticipantsPayload->new(); # GroupUpdateParticipantsPayload | Group update payload

eval {
    my $result = $api_instance->demote_participant(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->demote_participant: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_admin_groups**
> APIResponse get_admin_groups(instance_key => $instance_key)

Get admin groups.

Returns list of all groups in which you are admin.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key

eval {
    my $result = $api_instance->get_admin_groups(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->get_admin_groups: $@\n";
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

# **get_all_groups**
> APIResponse get_all_groups(instance_key => $instance_key, include_participants => $include_participants)

Get all groups.

Returns list of all groups with participants data. Set include_participants to false to exclude participants data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $include_participants = 'true'; # string | Include participants data

eval {
    my $result = $api_instance->get_all_groups(instance_key => $instance_key, include_participants => $include_participants);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->get_all_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **include_participants** | **string**| Include participants data | [optional] [default to &#39;true&#39;]

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_participants**
> APIResponse get_all_participants(instance_key => $instance_key, group_id => $group_id)

Get all participants.

Returns all participants of the group.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $group_id = "group_id_example"; # string | Group id of the group

eval {
    my $result = $api_instance->get_all_participants(instance_key => $instance_key, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->get_all_participants: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group**
> APIResponse get_group(instance_key => $instance_key, group_id => $group_id)

Get group.

Fetches the group data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $group_id = "group_id_example"; # string | Group id of the group

eval {
    my $result = $api_instance->get_group(instance_key => $instance_key, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->get_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_from_invite_link**
> APIResponse get_group_from_invite_link(instance_key => $instance_key, invite_link => $invite_link)

Get group from invite link.

Gets a group info from an invite link. An invite link is a link that can be used to join a group. It is usually in the format https://chat.whatsapp.com/{invitecode}

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $invite_link = "invite_link_example"; # string | The invite link to check

eval {
    my $result = $api_instance->get_group_from_invite_link(instance_key => $instance_key, invite_link => $invite_link);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->get_group_from_invite_link: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **invite_link** | **string**| The invite link to check | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_invite_code**
> APIResponse get_group_invite_code(instance_key => $instance_key, group_id => $group_id)

Get group invite code.

Gets the invite code of the group.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $group_id = "group_id_example"; # string | Group id of the group

eval {
    my $result = $api_instance->get_group_invite_code(instance_key => $instance_key, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->get_group_invite_code: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **join_group_with_link**
> APIResponse join_group_with_link(instance_key => $instance_key, invite_code => $invite_code)

Join group with invite code.

Joins a group with group invite link. An invite link is a link that can be used to join a group. It is usually in the format https://chat.whatsapp.com/{invitecode} You have to put invite_code in the url of the request. The invite code is the part after https://chat.whatsapp.com/ For example, if the invite link is https://chat.whatsapp.com/dsfsf34r3d3dsds, then the invite code is `dsfsf34r3d3dsds“

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $invite_code = "invite_code_example"; # string | The invite code of group you want to join

eval {
    my $result = $api_instance->join_group_with_link(instance_key => $instance_key, invite_code => $invite_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->join_group_with_link: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **invite_code** | **string**| The invite code of group you want to join | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leave_group**
> APIResponse leave_group(instance_key => $instance_key, group_id => $group_id)

Leaves the group.

Leaves the specified group.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $group_id = "group_id_example"; # string | Group id of the group

eval {
    my $result = $api_instance->leave_group(instance_key => $instance_key, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->leave_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promote_participant**
> APIResponse promote_participant(instance_key => $instance_key, group_id => $group_id, data => $data)

Promote participant.

Promotes participants to admin. You must be admin in the group or the query will fail.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $group_id = "group_id_example"; # string | Group id of the group
my $data = WWW::OpenAPIClient::Object::GroupUpdateParticipantsPayload->new(); # GroupUpdateParticipantsPayload | Group update payload

eval {
    my $result = $api_instance->promote_participant(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->promote_participant: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_participant**
> APIResponse remove_participant(instance_key => $instance_key, group_id => $group_id, data => $data)

Remove participant.

Handles removing participants from a group. You must be admin in the group or the query will fail.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $group_id = "group_id_example"; # string | Group id of the group
my $data = WWW::OpenAPIClient::Object::GroupUpdateParticipantsPayload->new(); # GroupUpdateParticipantsPayload | Group update payload

eval {
    my $result = $api_instance->remove_participant(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->remove_participant: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**GroupUpdateParticipantsPayload**](GroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_group_announce**
> APIResponse set_group_announce(instance_key => $instance_key, announce => $announce, group_id => $group_id)

Set group announce.

Set if non-admins are allowed to send messages in groups

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $announce = false; # boolean | Announce status
my $group_id = "group_id_example"; # string | Group id of the group

eval {
    my $result = $api_instance->set_group_announce(instance_key => $instance_key, announce => $announce, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->set_group_announce: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **announce** | **boolean**| Announce status | [default to false]
 **group_id** | **string**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_group_description**
> APIResponse set_group_description(instance_key => $instance_key, group_id => $group_id, data => $data)

Set group description.

Changes the group description

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $group_id = "group_id_example"; # string | Group id of the group
my $data = WWW::OpenAPIClient::Object::GroupUpdateDescriptionPayload->new(); # GroupUpdateDescriptionPayload | Group description data

eval {
    my $result = $api_instance->set_group_description(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->set_group_description: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**GroupUpdateDescriptionPayload**](GroupUpdateDescriptionPayload.md)| Group description data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_group_locked**
> APIResponse set_group_locked(instance_key => $instance_key, locked => $locked, group_id => $group_id)

Set group locked.

Set if non-admins are allowed to change the group dp and other stuff

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $locked = false; # boolean | Locked status
my $group_id = "group_id_example"; # string | Group id of the group

eval {
    my $result = $api_instance->set_group_locked(instance_key => $instance_key, locked => $locked, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->set_group_locked: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **locked** | **boolean**| Locked status | [default to false]
 **group_id** | **string**| Group id of the group | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_group_name**
> APIResponse set_group_name(instance_key => $instance_key, group_id => $group_id, data => $data)

Set group name.

Changes the group name. The max limit is 22 chars

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $group_id = "group_id_example"; # string | Group id of the group
my $data = WWW::OpenAPIClient::Object::GroupUpdateNamePayload->new(); # GroupUpdateNamePayload | Group name data

eval {
    my $result = $api_instance->set_group_name(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->set_group_name: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**GroupUpdateNamePayload**](GroupUpdateNamePayload.md)| Group name data | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_group_picture**
> APIResponse set_group_picture(instance_key => $instance_key, group_id => $group_id, set_group_picture_request => $set_group_picture_request)

Set group picture.

Changes the group profile picture. Currently it only seems to accept JPEG images only

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GroupManagementApi;
my $api_instance = WWW::OpenAPIClient::GroupManagementApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $instance_key = "instance_key_example"; # string | Instance key
my $group_id = "group_id_example"; # string | Group id of the group
my $set_group_picture_request = WWW::OpenAPIClient::Object::SetGroupPictureRequest->new(); # SetGroupPictureRequest | 

eval {
    my $result = $api_instance->set_group_picture(instance_key => $instance_key, group_id => $group_id, set_group_picture_request => $set_group_picture_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->set_group_picture: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **set_group_picture_request** | [**SetGroupPictureRequest**](SetGroupPictureRequest.md)|  | 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

