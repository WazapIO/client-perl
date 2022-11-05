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
# change_webhook_url
#
# Change Webhook url.
#
# @param string $instance_key Instance key (required)
# @param WebhookPayload $data Message data (required)
{
    my $params = {
    'instance_key' => {
        data_type => 'string',
        description => 'Instance key',
        required => '1',
    },
    'data' => {
        data_type => 'WebhookPayload',
        description => 'Message data',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'change_webhook_url' } = {
        summary => 'Change Webhook url.',
        params => $params,
        returns => 'APIResponse',
        };
}
# @return APIResponse
#
sub change_webhook_url {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling change_webhook_url");
    }

    # verify the required parameter 'data' is set
    unless (exists $args{'data'}) {
      croak("Missing the required parameter 'data' when calling change_webhook_url");
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
    my $_response_object = $self->{api_client}->deserialize('APIResponse', $response);
    return $_response_object;
}

#
# create_instance
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
    __PACKAGE__->method_documentation->{ 'create_instance' } = {
        summary => 'Creates a new instance key.',
        params => $params,
        returns => 'APIResponse',
        };
}
# @return APIResponse
#
sub create_instance {
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
    my $_response_object = $self->{api_client}->deserialize('APIResponse', $response);
    return $_response_object;
}

#
# delete_instance
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
    __PACKAGE__->method_documentation->{ 'delete_instance' } = {
        summary => 'Delete Instance.',
        params => $params,
        returns => 'APIResponse',
        };
}
# @return APIResponse
#
sub delete_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling delete_instance");
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
    my $_response_object = $self->{api_client}->deserialize('APIResponse', $response);
    return $_response_object;
}

#
# get_contacts
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
    __PACKAGE__->method_documentation->{ 'get_contacts' } = {
        summary => 'Get contacts.',
        params => $params,
        returns => 'APIResponse',
        };
}
# @return APIResponse
#
sub get_contacts {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling get_contacts");
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
    my $_response_object = $self->{api_client}->deserialize('APIResponse', $response);
    return $_response_object;
}

#
# get_instance
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
    __PACKAGE__->method_documentation->{ 'get_instance' } = {
        summary => 'Get Instance.',
        params => $params,
        returns => 'APIResponse',
        };
}
# @return APIResponse
#
sub get_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling get_instance");
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
    my $_response_object = $self->{api_client}->deserialize('APIResponse', $response);
    return $_response_object;
}

#
# get_qr_code
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
    __PACKAGE__->method_documentation->{ 'get_qr_code' } = {
        summary => 'Get QrCode.',
        params => $params,
        returns => 'APIResponse',
        };
}
# @return APIResponse
#
sub get_qr_code {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling get_qr_code");
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
    my $_response_object = $self->{api_client}->deserialize('APIResponse', $response);
    return $_response_object;
}

#
# list_instances
#
# Get all instances.
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'list_instances' } = {
        summary => 'Get all instances.',
        params => $params,
        returns => 'APIResponse',
        };
}
# @return APIResponse
#
sub list_instances {
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
    my $_response_object = $self->{api_client}->deserialize('APIResponse', $response);
    return $_response_object;
}

#
# logout_instance
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
    __PACKAGE__->method_documentation->{ 'logout_instance' } = {
        summary => 'Logout Instance.',
        params => $params,
        returns => 'APIResponse',
        };
}
# @return APIResponse
#
sub logout_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling logout_instance");
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
    my $_response_object = $self->{api_client}->deserialize('APIResponse', $response);
    return $_response_object;
}

1;
