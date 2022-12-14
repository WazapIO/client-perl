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
package WWW::OpenAPIClient::BusinessManagementApi;

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
# fetch_catlog
#
# Fetches the catlog.
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
    __PACKAGE__->method_documentation->{ 'fetch_catlog' } = {
        summary => 'Fetches the catlog.',
        params => $params,
        returns => 'APIResponse',
        };
}
# @return APIResponse
#
sub fetch_catlog {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling fetch_catlog");
    }

    # parse inputs
    my $_resource_path = '/instances/{instance_key}/business/catalog';

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
# send_payment_request
#
# Send a payment request.
#
# @param string $instance_key Instance key (required)
# @param PaymentRequestPayload $data Data (required)
{
    my $params = {
    'instance_key' => {
        data_type => 'string',
        description => 'Instance key',
        required => '1',
    },
    'data' => {
        data_type => 'PaymentRequestPayload',
        description => 'Data',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'send_payment_request' } = {
        summary => 'Send a payment request.',
        params => $params,
        returns => 'APIResponse',
        };
}
# @return APIResponse
#
sub send_payment_request {
    my ($self, %args) = @_;

    # verify the required parameter 'instance_key' is set
    unless (exists $args{'instance_key'}) {
      croak("Missing the required parameter 'instance_key' when calling send_payment_request");
    }

    # verify the required parameter 'data' is set
    unless (exists $args{'data'}) {
      croak("Missing the required parameter 'data' when calling send_payment_request");
    }

    # parse inputs
    my $_resource_path = '/instances/{instance_key}/business/payment-request';

    my $_method = 'POST';
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

1;
