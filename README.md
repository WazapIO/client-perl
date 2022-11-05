# NAME

WWW::OpenAPIClient::Role - a Moose role for the WhatsAPI Go

The V2 of WhatsAPI Go

# VERSION

Automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.PerlClientCodegen

## A note on Moose

This role is the only component of the library that uses Moose. See
WWW::OpenAPIClient::ApiFactory for non-Moosey usage.

# SYNOPSIS

The Perl Generator in the OpenAPI Generator project builds a library of Perl modules to interact with
a web service defined by a OpenAPI Specification. See below for how to build the
library.

This module provides an interface to the generated library. All the classes,
objects, and methods (well, not quite \*all\*, see below) are flattened into this
role.

        package MyApp;
        use Moose;
        with 'WWW::OpenAPIClient::Role';

        package main;

        my $api = MyApp->new({ tokens => $tokens });

        my $pet = $api->get_pet_by_id(pet_id => $pet_id);


## Structure of the library

The library consists of a set of API classes, one for each endpoint. These APIs
implement the method calls available on each endpoint.

Additionally, there is a set of "object" classes, which represent the objects
returned by and sent to the methods on the endpoints.

An API factory class is provided, which builds instances of each endpoint API.

This Moose role flattens all the methods from the endpoint APIs onto the consuming
class. It also provides methods to retrieve the endpoint API objects, and the API
factory object, should you need it.

For documentation of all these methods, see AUTOMATIC DOCUMENTATION below.

## Configuring authentication

In the normal case, the OpenAPI Spec will describe what parameters are
required and where to put them. You just need to supply the tokens.

    my $tokens = {
        # basic
        username => $username,
        password => $password,

        # oauth
        access_token => $oauth_token,

        # keys
        $some_key => { token => $token,
                       prefix => $prefix,
                       in => $in,             # 'head||query',
                       },

        $another => { token => $token,
                      prefix => $prefix,
                      in => $in,              # 'head||query',
                      },
        ...,

        };

        my $api = MyApp->new({ tokens => $tokens });

Note these are all optional, as are `prefix` and `in`, and depend on the API
you are accessing. Usually `prefix` and `in` will be determined by the code generator from
the spec and you will not need to set them at run time. If not, `in` will
default to 'head' and `prefix` to the empty string.

The tokens will be placed in a L<WWW::OpenAPIClient::Configuration> instance
as follows, but you don't need to know about this.

- `$cfg->{username}`

    String. The username for basic auth.

- `$cfg->{password}`

    String. The password for basic auth.

- `$cfg->{api_key}`

    Hashref. Keyed on the name of each key (there can be multiple tokens).

            $cfg->{api_key} = {
                    secretKey => 'aaaabbbbccccdddd',
                    anotherKey => '1111222233334444',
                    };

- `$cfg->{api_key_prefix}`

    Hashref. Keyed on the name of each key (there can be multiple tokens). Note not
    all api keys require a prefix.

            $cfg->{api_key_prefix} = {
                    secretKey => 'string',
                    anotherKey => 'same or some other string',
                    };

- `$cfg->{access_token}`

    String. The OAuth access token.

# METHODS

## `base_url`

The generated code has the `base_url` already set as a default value. This method
returns the current value of `base_url`.

## `api_factory`

Returns an API factory object. You probably won't need to call this directly.

        $self->api_factory('Pet'); # returns a WWW::OpenAPIClient::PetApi instance

        $self->pet_api;            # the same

# MISSING METHODS

Most of the methods on the API are delegated to individual endpoint API objects
(e.g. Pet API, Store API, User API etc). Where different endpoint APIs use the
same method name (e.g. `new()`), these methods can't be delegated. So you need
to call `$api->pet_api->new()`.

In principle, every API is susceptible to the presence of a few, random, undelegatable
method names. In practice, because of the way method names are constructed, it's
unlikely in general that any methods will be undelegatable, except for:

        new()
        class_documentation()
        method_documentation()

To call these methods, you need to get a handle on the relevant object, either
by calling `$api->foo_api` or by retrieving an object, e.g.
`$api->get_pet_by_id(pet_id => $pet_id)`. They are class methods, so
you could also call them on class names.

# BUILDING YOUR LIBRARY

See the homepage `https://openapi-generator.tech` for full details.
But briefly, clone the git repository, build the codegen codebase, set up your build
config file, then run the API build script. You will need git, Java 7 or 8 and Apache
maven 3.0.3 or better already installed.

The config file should specify the project name for the generated library:

        {"moduleName":"WWW::MyProjectName"}

Your library files will be built under `WWW::MyProjectName`.

          $ git clone https://github.com/openapitools/openapi-generator
          $ cd openapi-generator
          $ mvn package
          $ java -jar modules/openapi-generator-cli/target/openapi-generator-cli.jar generate \
    -i [URL or file path to JSON OpenAPI API spec] \
    -g perl \
    -c /path/to/config/file.json \
    -o /path/to/output/folder

Bang, all done. Run the `autodoc` script in the `bin` directory to see the API
you just built.

# AUTOMATIC DOCUMENTATION

You can print out a summary of the generated API by running the included
`autodoc` script in the `bin` directory of your generated library. A few
output formats are supported:

          Usage: autodoc [OPTION]

    -w           wide format (default)
    -n           narrow format
    -p           POD format
    -H           HTML format
    -m           Markdown format
    -h           print this help message
    -c           your application class


The `-c` option allows you to load and inspect your own application. A dummy
namespace is used if you don't supply your own class.

# DOCUMENTATION FROM THE OpenAPI Spec

Additional documentation for each class and method may be provided by the OpenAPI
spec. If so, this is available via the `class_documentation()` and
`method_documentation()` methods on each generated object class, and the
`method_documentation()` method on the endpoint API classes:

        my $cmdoc = $api->pet_api->method_documentation->{$method_name};

        my $odoc = $api->get_pet_by_id->(pet_id => $pet_id)->class_documentation;
        my $omdoc = $api->get_pet_by_id->(pet_id => $pet_id)->method_documentation->{method_name};


Each of these calls returns a hashref with various useful pieces of information.

# Installation Prerequisites

Use [cpanm](https://metacpan.org/pod/distribution/App-cpanminus/bin/cpanm) to install the module dependencies:

```
cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
cpanm --quiet --no-interactive Class::Accessor Test::Exception Test::More Log::Any LWP::UserAgent URI::Query Module::Runtime DateTime Module::Find Moose::Role JSON
```

# LOAD THE MODULES

To load the API packages:
```perl
use WWW::OpenAPIClient::BusinessManagementApi;
use WWW::OpenAPIClient::GroupManagementApi;
use WWW::OpenAPIClient::InstanceApi;
use WWW::OpenAPIClient::MessageSendingApi;
use WWW::OpenAPIClient::MiscellaneousApi;

```

To load the models:
```perl
use WWW::OpenAPIClient::Object::APIResponse;
use WWW::OpenAPIClient::Object::ButtonMessagePayload;
use WWW::OpenAPIClient::Object::ButtonMessageWithMediaPayload;
use WWW::OpenAPIClient::Object::ContactMessagePayload;
use WWW::OpenAPIClient::Object::ContactMessagePayloadVcard;
use WWW::OpenAPIClient::Object::FileUpload;
use WWW::OpenAPIClient::Object::GroupCreatePayload;
use WWW::OpenAPIClient::Object::GroupUpdateDescriptionPayload;
use WWW::OpenAPIClient::Object::GroupUpdateNamePayload;
use WWW::OpenAPIClient::Object::GroupUpdateParticipantsPayload;
use WWW::OpenAPIClient::Object::InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest;
use WWW::OpenAPIClient::Object::InstancesInstanceKeySendAudioPostRequest;
use WWW::OpenAPIClient::Object::InstancesInstanceKeySendDocumentPostRequest;
use WWW::OpenAPIClient::Object::InstancesInstanceKeySendImagePostRequest;
use WWW::OpenAPIClient::Object::InstancesInstanceKeySendUploadPostRequest;
use WWW::OpenAPIClient::Object::InstancesInstanceKeySendVideoPostRequest;
use WWW::OpenAPIClient::Object::ListItem;
use WWW::OpenAPIClient::Object::ListMessagePayload;
use WWW::OpenAPIClient::Object::ListSection;
use WWW::OpenAPIClient::Object::LocationMessagePayload;
use WWW::OpenAPIClient::Object::LocationMessagePayloadLocation;
use WWW::OpenAPIClient::Object::PollMessagePayload;
use WWW::OpenAPIClient::Object::ReplyButton;
use WWW::OpenAPIClient::Object::SendMediaPayload;
use WWW::OpenAPIClient::Object::TemplateButton;
use WWW::OpenAPIClient::Object::TemplateButtonPayload;
use WWW::OpenAPIClient::Object::TemplateButtonWithMediaPayload;
use WWW::OpenAPIClient::Object::TextMessage;
use WWW::OpenAPIClient::Object::UserInfoPayload;
use WWW::OpenAPIClient::Object::WebhookPayload;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use WWW::OpenAPIClient::BusinessManagementApi;
use WWW::OpenAPIClient::GroupManagementApi;
use WWW::OpenAPIClient::InstanceApi;
use WWW::OpenAPIClient::MessageSendingApi;
use WWW::OpenAPIClient::MiscellaneousApi;

# load the models
use WWW::OpenAPIClient::Object::APIResponse;
use WWW::OpenAPIClient::Object::ButtonMessagePayload;
use WWW::OpenAPIClient::Object::ButtonMessageWithMediaPayload;
use WWW::OpenAPIClient::Object::ContactMessagePayload;
use WWW::OpenAPIClient::Object::ContactMessagePayloadVcard;
use WWW::OpenAPIClient::Object::FileUpload;
use WWW::OpenAPIClient::Object::GroupCreatePayload;
use WWW::OpenAPIClient::Object::GroupUpdateDescriptionPayload;
use WWW::OpenAPIClient::Object::GroupUpdateNamePayload;
use WWW::OpenAPIClient::Object::GroupUpdateParticipantsPayload;
use WWW::OpenAPIClient::Object::InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest;
use WWW::OpenAPIClient::Object::InstancesInstanceKeySendAudioPostRequest;
use WWW::OpenAPIClient::Object::InstancesInstanceKeySendDocumentPostRequest;
use WWW::OpenAPIClient::Object::InstancesInstanceKeySendImagePostRequest;
use WWW::OpenAPIClient::Object::InstancesInstanceKeySendUploadPostRequest;
use WWW::OpenAPIClient::Object::InstancesInstanceKeySendVideoPostRequest;
use WWW::OpenAPIClient::Object::ListItem;
use WWW::OpenAPIClient::Object::ListMessagePayload;
use WWW::OpenAPIClient::Object::ListSection;
use WWW::OpenAPIClient::Object::LocationMessagePayload;
use WWW::OpenAPIClient::Object::LocationMessagePayloadLocation;
use WWW::OpenAPIClient::Object::PollMessagePayload;
use WWW::OpenAPIClient::Object::ReplyButton;
use WWW::OpenAPIClient::Object::SendMediaPayload;
use WWW::OpenAPIClient::Object::TemplateButton;
use WWW::OpenAPIClient::Object::TemplateButtonPayload;
use WWW::OpenAPIClient::Object::TemplateButtonWithMediaPayload;
use WWW::OpenAPIClient::Object::TextMessage;
use WWW::OpenAPIClient::Object::UserInfoPayload;
use WWW::OpenAPIClient::Object::WebhookPayload;

# for displaying the API response data
use Data::Dumper;


my $api_instance = WWW::OpenAPIClient::BusinessManagementApi->new(
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
    warn "Exception when calling BusinessManagementApi->instances_instance_key_business_catalog_get: $@\n";
}

```

# DOCUMENTATION FOR API ENDPOINTS

All URIs are relative to */api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BusinessManagementApi* | [**instances_instance_key_business_catalog_get**](docs/BusinessManagementApi.md#instances_instance_key_business_catalog_get) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog.
*GroupManagementApi* | [**instances_instance_key_groups_admin_get**](docs/GroupManagementApi.md#instances_instance_key_groups_admin_get) | **GET** /instances/{instance_key}/groups/admin | Get admin groupss.
*GroupManagementApi* | [**instances_instance_key_groups_create_post**](docs/GroupManagementApi.md#instances_instance_key_groups_create_post) | **POST** /instances/{instance_key}/groups/create | Create group.
*GroupManagementApi* | [**instances_instance_key_groups_get**](docs/GroupManagementApi.md#instances_instance_key_groups_get) | **GET** /instances/{instance_key}/groups/ | Get all groups.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_announce_put**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_announce_put) | **PUT** /instances/{instance_key}/groups/{group_id}/announce | Set group announce.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_delete**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_delete) | **DELETE** /instances/{instance_key}/groups/{group_id}/ | Leaves the group.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_description_put**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_description_put) | **PUT** /instances/{instance_key}/groups/{group_id}/description | Set group description.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_get**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_get) | **GET** /instances/{instance_key}/groups/{group_id} | Get group.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_invite_code_get**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_invite_code_get) | **GET** /instances/{instance_key}/groups/{group_id}/invite-code | Get group invite code.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_lock_put**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_lock_put) | **PUT** /instances/{instance_key}/groups/{group_id}/lock | Set group locked.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_name_put**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_name_put) | **PUT** /instances/{instance_key}/groups/{group_id}/name | Set group name.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_participants_add_post**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_participants_add_post) | **POST** /instances/{instance_key}/groups/{group_id}/participants/add | Add participant.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_participants_demote_put**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_participants_demote_put) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/demote | Demote participant.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_participants_promote_put**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_participants_promote_put) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/promote | Promote participant.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_participants_remove_delete**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_participants_remove_delete) | **DELETE** /instances/{instance_key}/groups/{group_id}/participants/remove | Remove participant.
*GroupManagementApi* | [**instances_instance_key_groups_group_id_profile_pic_put**](docs/GroupManagementApi.md#instances_instance_key_groups_group_id_profile_pic_put) | **PUT** /instances/{instance_key}/groups/{group_id}/profile-pic | Set group picture.
*GroupManagementApi* | [**instances_instance_key_groups_invite_info_get**](docs/GroupManagementApi.md#instances_instance_key_groups_invite_info_get) | **GET** /instances/{instance_key}/groups/invite-info | Get group from invite link.
*InstanceApi* | [**instances_create_get**](docs/InstanceApi.md#instances_create_get) | **GET** /instances/create | Creates a new instance key.
*InstanceApi* | [**instances_instance_key_contacts_get**](docs/InstanceApi.md#instances_instance_key_contacts_get) | **GET** /instances/{instance_key}/contacts | Get contacts.
*InstanceApi* | [**instances_instance_key_delete_delete**](docs/InstanceApi.md#instances_instance_key_delete_delete) | **DELETE** /instances/{instance_key}/delete | Delete Instance.
*InstanceApi* | [**instances_instance_key_get**](docs/InstanceApi.md#instances_instance_key_get) | **GET** /instances/{instance_key}/ | Get Instance.
*InstanceApi* | [**instances_instance_key_logout_delete**](docs/InstanceApi.md#instances_instance_key_logout_delete) | **DELETE** /instances/{instance_key}/logout | Logout Instance.
*InstanceApi* | [**instances_instance_key_qrcode_get**](docs/InstanceApi.md#instances_instance_key_qrcode_get) | **GET** /instances/{instance_key}/qrcode | Get QrCode.
*InstanceApi* | [**instances_instance_key_webhook_put**](docs/InstanceApi.md#instances_instance_key_webhook_put) | **PUT** /instances/{instance_key}/webhook | Change Webhook url.
*InstanceApi* | [**instances_list_get**](docs/InstanceApi.md#instances_list_get) | **GET** /instances/list | Get all instances.
*MessageSendingApi* | [**instances_instance_key_send_audio_post**](docs/MessageSendingApi.md#instances_instance_key_send_audio_post) | **POST** /instances/{instance_key}/send/audio | Send raw audio.
*MessageSendingApi* | [**instances_instance_key_send_button_media_post**](docs/MessageSendingApi.md#instances_instance_key_send_button_media_post) | **POST** /instances/{instance_key}/send/button-media | Send a button message with a media header.
*MessageSendingApi* | [**instances_instance_key_send_buttons_post**](docs/MessageSendingApi.md#instances_instance_key_send_buttons_post) | **POST** /instances/{instance_key}/send/buttons | Send a button message.
*MessageSendingApi* | [**instances_instance_key_send_contact_post**](docs/MessageSendingApi.md#instances_instance_key_send_contact_post) | **POST** /instances/{instance_key}/send/contact | Send a contact message.
*MessageSendingApi* | [**instances_instance_key_send_document_post**](docs/MessageSendingApi.md#instances_instance_key_send_document_post) | **POST** /instances/{instance_key}/send/document | Send raw document.
*MessageSendingApi* | [**instances_instance_key_send_image_post**](docs/MessageSendingApi.md#instances_instance_key_send_image_post) | **POST** /instances/{instance_key}/send/image | Send raw image.
*MessageSendingApi* | [**instances_instance_key_send_list_post**](docs/MessageSendingApi.md#instances_instance_key_send_list_post) | **POST** /instances/{instance_key}/send/list | Send a List message.
*MessageSendingApi* | [**instances_instance_key_send_location_post**](docs/MessageSendingApi.md#instances_instance_key_send_location_post) | **POST** /instances/{instance_key}/send/location | Send a location message.
*MessageSendingApi* | [**instances_instance_key_send_media_post**](docs/MessageSendingApi.md#instances_instance_key_send_media_post) | **POST** /instances/{instance_key}/send/media | Send a media message.
*MessageSendingApi* | [**instances_instance_key_send_poll_post**](docs/MessageSendingApi.md#instances_instance_key_send_poll_post) | **POST** /instances/{instance_key}/send/poll | Send a Poll message.
*MessageSendingApi* | [**instances_instance_key_send_template_media_post**](docs/MessageSendingApi.md#instances_instance_key_send_template_media_post) | **POST** /instances/{instance_key}/send/template-media | Send a template message with media.
*MessageSendingApi* | [**instances_instance_key_send_template_post**](docs/MessageSendingApi.md#instances_instance_key_send_template_post) | **POST** /instances/{instance_key}/send/template | Send a template message.
*MessageSendingApi* | [**instances_instance_key_send_text_post**](docs/MessageSendingApi.md#instances_instance_key_send_text_post) | **POST** /instances/{instance_key}/send/text | Send a text message.
*MessageSendingApi* | [**instances_instance_key_send_upload_post**](docs/MessageSendingApi.md#instances_instance_key_send_upload_post) | **POST** /instances/{instance_key}/send/upload | Upload media.
*MessageSendingApi* | [**instances_instance_key_send_video_post**](docs/MessageSendingApi.md#instances_instance_key_send_video_post) | **POST** /instances/{instance_key}/send/video | Send raw video.
*MiscellaneousApi* | [**instances_instance_key_misc_profile_pic_get**](docs/MiscellaneousApi.md#instances_instance_key_misc_profile_pic_get) | **GET** /instances/{instance_key}/misc/profile-pic | Get profile pic.
*MiscellaneousApi* | [**instances_instance_key_misc_user_info_post**](docs/MiscellaneousApi.md#instances_instance_key_misc_user_info_post) | **POST** /instances/{instance_key}/misc/user-info | Fetches the users info.


# DOCUMENTATION FOR MODELS
 - [WWW::OpenAPIClient::Object::APIResponse](docs/APIResponse.md)
 - [WWW::OpenAPIClient::Object::ButtonMessagePayload](docs/ButtonMessagePayload.md)
 - [WWW::OpenAPIClient::Object::ButtonMessageWithMediaPayload](docs/ButtonMessageWithMediaPayload.md)
 - [WWW::OpenAPIClient::Object::ContactMessagePayload](docs/ContactMessagePayload.md)
 - [WWW::OpenAPIClient::Object::ContactMessagePayloadVcard](docs/ContactMessagePayloadVcard.md)
 - [WWW::OpenAPIClient::Object::FileUpload](docs/FileUpload.md)
 - [WWW::OpenAPIClient::Object::GroupCreatePayload](docs/GroupCreatePayload.md)
 - [WWW::OpenAPIClient::Object::GroupUpdateDescriptionPayload](docs/GroupUpdateDescriptionPayload.md)
 - [WWW::OpenAPIClient::Object::GroupUpdateNamePayload](docs/GroupUpdateNamePayload.md)
 - [WWW::OpenAPIClient::Object::GroupUpdateParticipantsPayload](docs/GroupUpdateParticipantsPayload.md)
 - [WWW::OpenAPIClient::Object::InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest](docs/InstancesInstanceKeyGroupsGroupIdProfilePicPutRequest.md)
 - [WWW::OpenAPIClient::Object::InstancesInstanceKeySendAudioPostRequest](docs/InstancesInstanceKeySendAudioPostRequest.md)
 - [WWW::OpenAPIClient::Object::InstancesInstanceKeySendDocumentPostRequest](docs/InstancesInstanceKeySendDocumentPostRequest.md)
 - [WWW::OpenAPIClient::Object::InstancesInstanceKeySendImagePostRequest](docs/InstancesInstanceKeySendImagePostRequest.md)
 - [WWW::OpenAPIClient::Object::InstancesInstanceKeySendUploadPostRequest](docs/InstancesInstanceKeySendUploadPostRequest.md)
 - [WWW::OpenAPIClient::Object::InstancesInstanceKeySendVideoPostRequest](docs/InstancesInstanceKeySendVideoPostRequest.md)
 - [WWW::OpenAPIClient::Object::ListItem](docs/ListItem.md)
 - [WWW::OpenAPIClient::Object::ListMessagePayload](docs/ListMessagePayload.md)
 - [WWW::OpenAPIClient::Object::ListSection](docs/ListSection.md)
 - [WWW::OpenAPIClient::Object::LocationMessagePayload](docs/LocationMessagePayload.md)
 - [WWW::OpenAPIClient::Object::LocationMessagePayloadLocation](docs/LocationMessagePayloadLocation.md)
 - [WWW::OpenAPIClient::Object::PollMessagePayload](docs/PollMessagePayload.md)
 - [WWW::OpenAPIClient::Object::ReplyButton](docs/ReplyButton.md)
 - [WWW::OpenAPIClient::Object::SendMediaPayload](docs/SendMediaPayload.md)
 - [WWW::OpenAPIClient::Object::TemplateButton](docs/TemplateButton.md)
 - [WWW::OpenAPIClient::Object::TemplateButtonPayload](docs/TemplateButtonPayload.md)
 - [WWW::OpenAPIClient::Object::TemplateButtonWithMediaPayload](docs/TemplateButtonWithMediaPayload.md)
 - [WWW::OpenAPIClient::Object::TextMessage](docs/TextMessage.md)
 - [WWW::OpenAPIClient::Object::UserInfoPayload](docs/UserInfoPayload.md)
 - [WWW::OpenAPIClient::Object::WebhookPayload](docs/WebhookPayload.md)


# DOCUMENTATION FOR AUTHORIZATION

## ApiKeyAuth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

