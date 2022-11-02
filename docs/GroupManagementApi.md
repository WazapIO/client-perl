# WWW::OpenAPIClient::GroupManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::GroupManagementApi;
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instances_instance_key_groups_admin_get**](GroupManagementApi.md#instances_instance_key_groups_admin_get) | **GET** /instances/{instance_key}/groups/admin | Get admin groupss.
[**instances_instance_key_groups_create_post**](GroupManagementApi.md#instances_instance_key_groups_create_post) | **POST** /instances/{instance_key}/groups/create | Create group.
[**instances_instance_key_groups_get**](GroupManagementApi.md#instances_instance_key_groups_get) | **GET** /instances/{instance_key}/groups/ | Get all groups.
[**instances_instance_key_groups_group_id_announce_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_announce_put) | **PUT** /instances/{instance_key}/groups/{group_id}/announce | Set group announce.
[**instances_instance_key_groups_group_id_delete**](GroupManagementApi.md#instances_instance_key_groups_group_id_delete) | **DELETE** /instances/{instance_key}/groups/{group_id}/ | Leaves the group.
[**instances_instance_key_groups_group_id_description_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_description_put) | **PUT** /instances/{instance_key}/groups/{group_id}/description | Set group description.
[**instances_instance_key_groups_group_id_get**](GroupManagementApi.md#instances_instance_key_groups_group_id_get) | **GET** /instances/{instance_key}/groups/{group_id} | Get group.
[**instances_instance_key_groups_group_id_invite_code_get**](GroupManagementApi.md#instances_instance_key_groups_group_id_invite_code_get) | **GET** /instances/{instance_key}/groups/{group_id}/invite-code | Get group invite code.
[**instances_instance_key_groups_group_id_lock_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_lock_put) | **PUT** /instances/{instance_key}/groups/{group_id}/lock | Set group locked.
[**instances_instance_key_groups_group_id_name_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_name_put) | **PUT** /instances/{instance_key}/groups/{group_id}/name | Set group name.
[**instances_instance_key_groups_group_id_participants_add_post**](GroupManagementApi.md#instances_instance_key_groups_group_id_participants_add_post) | **POST** /instances/{instance_key}/groups/{group_id}/participants/add | Add participant.
[**instances_instance_key_groups_group_id_participants_demote_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_participants_demote_put) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/demote | Demote participant.
[**instances_instance_key_groups_group_id_participants_promote_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_participants_promote_put) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/promote | Promote participant.
[**instances_instance_key_groups_group_id_participants_remove_delete**](GroupManagementApi.md#instances_instance_key_groups_group_id_participants_remove_delete) | **DELETE** /instances/{instance_key}/groups/{group_id}/participants/remove | Remove participant.
[**instances_instance_key_groups_group_id_profile_pic_put**](GroupManagementApi.md#instances_instance_key_groups_group_id_profile_pic_put) | **PUT** /instances/{instance_key}/groups/{group_id}/profile-pic | Set group picture.
[**instances_instance_key_groups_invite_info_get**](GroupManagementApi.md#instances_instance_key_groups_invite_info_get) | **GET** /instances/{instance_key}/groups/invite-info | Get group from invite link.


# **instances_instance_key_groups_admin_get**
> MainAPIResponse instances_instance_key_groups_admin_get(instance_key => $instance_key)

Get admin groupss.

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
    my $result = $api_instance->instances_instance_key_groups_admin_get(instance_key => $instance_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_admin_get: $@\n";
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

# **instances_instance_key_groups_create_post**
> MainAPIResponse instances_instance_key_groups_create_post(instance_key => $instance_key, data => $data)

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
my $data = WWW::OpenAPIClient::Object::StructsGroupCreatePayload->new(); # StructsGroupCreatePayload | Group create payload

eval {
    my $result = $api_instance->instances_instance_key_groups_create_post(instance_key => $instance_key, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_create_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **data** | [**StructsGroupCreatePayload**](StructsGroupCreatePayload.md)| Group create payload | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_get**
> MainAPIResponse instances_instance_key_groups_get(instance_key => $instance_key, include_participants => $include_participants)

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
    my $result = $api_instance->instances_instance_key_groups_get(instance_key => $instance_key, include_participants => $include_participants);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **include_participants** | **string**| Include participants data | [optional] [default to &#39;true&#39;]

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_announce_put**
> MainAPIResponse instances_instance_key_groups_group_id_announce_put(instance_key => $instance_key, announce => $announce, group_id => $group_id)

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
    my $result = $api_instance->instances_instance_key_groups_group_id_announce_put(instance_key => $instance_key, announce => $announce, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_announce_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **announce** | **boolean**| Announce status | [default to false]
 **group_id** | **string**| Group id of the group | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_delete**
> MainAPIResponse instances_instance_key_groups_group_id_delete(instance_key => $instance_key, group_id => $group_id)

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
    my $result = $api_instance->instances_instance_key_groups_group_id_delete(instance_key => $instance_key, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_description_put**
> MainAPIResponse instances_instance_key_groups_group_id_description_put(instance_key => $instance_key, group_id => $group_id, data => $data)

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
my $data = WWW::OpenAPIClient::Object::StructsGroupUpdateDescriptionPayload->new(); # StructsGroupUpdateDescriptionPayload | Group description data

eval {
    my $result = $api_instance->instances_instance_key_groups_group_id_description_put(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_description_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**StructsGroupUpdateDescriptionPayload**](StructsGroupUpdateDescriptionPayload.md)| Group description data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_get**
> MainAPIResponse instances_instance_key_groups_group_id_get(instance_key => $instance_key, group_id => $group_id)

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
    my $result = $api_instance->instances_instance_key_groups_group_id_get(instance_key => $instance_key, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_invite_code_get**
> MainAPIResponse instances_instance_key_groups_group_id_invite_code_get(instance_key => $instance_key, group_id => $group_id)

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
    my $result = $api_instance->instances_instance_key_groups_group_id_invite_code_get(instance_key => $instance_key, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_invite_code_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_lock_put**
> MainAPIResponse instances_instance_key_groups_group_id_lock_put(instance_key => $instance_key, locked => $locked, group_id => $group_id)

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
    my $result = $api_instance->instances_instance_key_groups_group_id_lock_put(instance_key => $instance_key, locked => $locked, group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_lock_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **locked** | **boolean**| Locked status | [default to false]
 **group_id** | **string**| Group id of the group | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_name_put**
> MainAPIResponse instances_instance_key_groups_group_id_name_put(instance_key => $instance_key, group_id => $group_id, data => $data)

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
my $data = WWW::OpenAPIClient::Object::StructsGroupUpdateNamePayload->new(); # StructsGroupUpdateNamePayload | Group name data

eval {
    my $result = $api_instance->instances_instance_key_groups_group_id_name_put(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_name_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**StructsGroupUpdateNamePayload**](StructsGroupUpdateNamePayload.md)| Group name data | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_participants_add_post**
> MainAPIResponse instances_instance_key_groups_group_id_participants_add_post(instance_key => $instance_key, group_id => $group_id, data => $data)

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
my $data = WWW::OpenAPIClient::Object::StructsGroupUpdateParticipantsPayload->new(); # StructsGroupUpdateParticipantsPayload | Group update payload

eval {
    my $result = $api_instance->instances_instance_key_groups_group_id_participants_add_post(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_add_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**StructsGroupUpdateParticipantsPayload**](StructsGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_participants_demote_put**
> MainAPIResponse instances_instance_key_groups_group_id_participants_demote_put(instance_key => $instance_key, group_id => $group_id, data => $data)

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
my $data = WWW::OpenAPIClient::Object::StructsGroupUpdateParticipantsPayload->new(); # StructsGroupUpdateParticipantsPayload | Group update payload

eval {
    my $result = $api_instance->instances_instance_key_groups_group_id_participants_demote_put(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_demote_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**StructsGroupUpdateParticipantsPayload**](StructsGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_participants_promote_put**
> MainAPIResponse instances_instance_key_groups_group_id_participants_promote_put(instance_key => $instance_key, group_id => $group_id, data => $data)

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
my $data = WWW::OpenAPIClient::Object::StructsGroupUpdateParticipantsPayload->new(); # StructsGroupUpdateParticipantsPayload | Group update payload

eval {
    my $result = $api_instance->instances_instance_key_groups_group_id_participants_promote_put(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_promote_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**StructsGroupUpdateParticipantsPayload**](StructsGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_participants_remove_delete**
> MainAPIResponse instances_instance_key_groups_group_id_participants_remove_delete(instance_key => $instance_key, group_id => $group_id, data => $data)

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
my $data = WWW::OpenAPIClient::Object::StructsGroupUpdateParticipantsPayload->new(); # StructsGroupUpdateParticipantsPayload | Group update payload

eval {
    my $result = $api_instance->instances_instance_key_groups_group_id_participants_remove_delete(instance_key => $instance_key, group_id => $group_id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_participants_remove_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **data** | [**StructsGroupUpdateParticipantsPayload**](StructsGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_group_id_profile_pic_put**
> MainAPIResponse instances_instance_key_groups_group_id_profile_pic_put(instance_key => $instance_key, group_id => $group_id, instances_instance_key_groups_group_id_profile_pic_put_request => $instances_instance_key_groups_group_id_profile_pic_put_request)

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
my $instances_instance_key_groups_group_id_profile_pic_put_request = WWW::OpenAPIClient::Object::InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest->new(); # InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest | 

eval {
    my $result = $api_instance->instances_instance_key_groups_group_id_profile_pic_put(instance_key => $instance_key, group_id => $group_id, instances_instance_key_groups_group_id_profile_pic_put_request => $instances_instance_key_groups_group_id_profile_pic_put_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_group_id_profile_pic_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **group_id** | **string**| Group id of the group | 
 **instances_instance_key_groups_group_id_profile_pic_put_request** | [**InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest**](InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest.md)|  | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instances_instance_key_groups_invite_info_get**
> MainAPIResponse instances_instance_key_groups_invite_info_get(instance_key => $instance_key, invite_link => $invite_link)

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
    my $result = $api_instance->instances_instance_key_groups_invite_info_get(instance_key => $instance_key, invite_link => $invite_link);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupManagementApi->instances_instance_key_groups_invite_info_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_key** | **string**| Instance key | 
 **invite_link** | **string**| The invite link to check | 

### Return type

[**MainAPIResponse**](MainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

