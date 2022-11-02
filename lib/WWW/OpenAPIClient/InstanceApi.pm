=begin comment

WhatsAPI Go

The V2 of WhatsAPI Go

The version of the OpenAPI document: 2.0
Contact: manjit@sponsorbook.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::InstanceApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# instances_create_get
#
# Creates a new instance key.
#
# @param string $instance_key Insert instance key if you want to provide custom key (optional)
{
    my $params = {
    'instance_key' => {
        data_type => 'string',
        description => 'Insert instance key if you want to provide custom key',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'instances_create_get' } = {
        summary => 'Creates a new instance key.',
        params => $params,
        returns => 'MainAPIResponse',
        };
}
# @return MainAPIResponse
#
sub instances_create_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/instances/create';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'instance_key'}) {
        $query_params->{'instance_key'} = $self->{api_client}->to_query_value($args{'instance_key'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(ApiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('MainAPIResponse', $response);
    return $_response_object;
}

#
# instances_instance_key_contacts_get
#
# Get contacts.
#
# @param string $instance_key Instance key (required)
{
    my $params = {
    'instance_key' => {
        data_type => 'string',
        description => 'Instance key',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'instances_instance_key_contacts_get' } = {
        summary => 'Get contacts.',
        params => $params,
        returns => 'MainAPIResponse',
        };
}
# @return MainAPIResponse
#
sub instances_instance_key_contacts_get {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling instances_instance_key_contacts_get");
    }

    # parse inputs
    my $_resource_path = '/instances/{instance_key}/contacts';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'instance_key'}) {
        my $_base_variable = "{" . "instance_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'instance_key'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(ApiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('MainAPIResponse', $response);
    return $_response_object;
}

#
# instances_instance_key_delete_delete
#
# Delete Instance.
#
# @param string $instance_key Instance key (required)
{
    my $params = {
    'instance_key' => {
        data_type => 'string',
        description => 'Instance key',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'instances_instance_key_delete_delete' } = {
        summary => 'Delete Instance.',
        params => $params,
        returns => 'MainAPIResponse',
        };
}
# @return MainAPIResponse
#
sub instances_instance_key_delete_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling instances_instance_key_delete_delete");
    }

    # parse inputs
    my $_resource_path = '/instances/{instance_key}/delete';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'instance_key'}) {
        my $_base_variable = "{" . "instance_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'instance_key'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(ApiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('MainAPIResponse', $response);
    return $_response_object;
}

#
# instances_instance_key_get
#
# Get Instance.
#
# @param string $instance_key Instance key (required)
{
    my $params = {
    'instance_key' => {
        data_type => 'string',
        description => 'Instance key',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'instances_instance_key_get' } = {
        summary => 'Get Instance.',
        params => $params,
        returns => 'MainAPIResponse',
        };
}
# @return MainAPIResponse
#
sub instances_instance_key_get {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling instances_instance_key_get");
    }

    # parse inputs
    my $_resource_path = '/instances/{instance_key}/';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'instance_key'}) {
        my $_base_variable = "{" . "instance_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'instance_key'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(ApiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('MainAPIResponse', $response);
    return $_response_object;
}

#
# instances_instance_key_logout_delete
#
# Logout Instance.
#
# @param string $instance_key Instance key (required)
{
    my $params = {
    'instance_key' => {
        data_type => 'string',
        description => 'Instance key',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'instances_instance_key_logout_delete' } = {
        summary => 'Logout Instance.',
        params => $params,
        returns => 'MainAPIResponse',
        };
}
# @return MainAPIResponse
#
sub instances_instance_key_logout_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling instances_instance_key_logout_delete");
    }

    # parse inputs
    my $_resource_path = '/instances/{instance_key}/logout';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'instance_key'}) {
        my $_base_variable = "{" . "instance_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'instance_key'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(ApiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('MainAPIResponse', $response);
    return $_response_object;
}

#
# instances_instance_key_qrcode_get
#
# Get QrCode.
#
# @param string $instance_key Instance key (required)
{
    my $params = {
    'instance_key' => {
        data_type => 'string',
        description => 'Instance key',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'instances_instance_key_qrcode_get' } = {
        summary => 'Get QrCode.',
        params => $params,
        returns => 'MainAPIResponse',
        };
}
# @return MainAPIResponse
#
sub instances_instance_key_qrcode_get {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling instances_instance_key_qrcode_get");
    }

    # parse inputs
    my $_resource_path = '/instances/{instance_key}/qrcode';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'instance_key'}) {
        my $_base_variable = "{" . "instance_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'instance_key'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(ApiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('MainAPIResponse', $response);
    return $_response_object;
}

#
# instances_instance_key_webhook_put
#
# Change Webhook url.
#
# @param string $instance_key Instance key (required)
# @param StructsWebhookPayload $data Message data (required)
{
    my $params = {
    'instance_key' => {
        data_type => 'string',
        description => 'Instance key',
        required => '1',
    },
    'data' => {
        data_type => 'StructsWebhookPayload',
        description => 'Message data',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'instances_instance_key_webhook_put' } = {
        summary => 'Change Webhook url.',
        params => $params,
        returns => 'MainAPIResponse',
        };
}
# @return MainAPIResponse
#
sub instances_instance_key_webhook_put {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling instances_instance_key_webhook_put");
    }

    # verify the required parameter 'data' is set
    unless (exists $args{'data'}) {
      croak("Missing the required parameter 'data' when calling instances_instance_key_webhook_put");
    }

    # parse inputs
    my $_resource_path = '/instances/{instance_key}/webhook';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'instance_key'}) {
        my $_base_variable = "{" . "instance_key" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'instance_key'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'data'}) {
        $_body_data = $args{'data'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(ApiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('MainAPIResponse', $response);
    return $_response_object;
}

#
# instances_list_get
#
# Get all instances.
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'instances_list_get' } = {
        summary => 'Get all instances.',
        params => $params,
        returns => 'MainAPIResponse',
        };
}
# @return MainAPIResponse
#
sub instances_list_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/instances/list';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(ApiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('MainAPIResponse', $response);
    return $_response_object;
}

1;
