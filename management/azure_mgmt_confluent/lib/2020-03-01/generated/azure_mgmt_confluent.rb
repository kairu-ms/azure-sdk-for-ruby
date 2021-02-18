# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2020-03-01/generated/azure_mgmt_confluent/module_definition'
require 'ms_rest_azure'

module Azure::Confluent::Mgmt::V2020_03_01
  autoload :MarketplaceAgreements,                              '2020-03-01/generated/azure_mgmt_confluent/marketplace_agreements.rb'
  autoload :OrganizationOperations,                             '2020-03-01/generated/azure_mgmt_confluent/organization_operations.rb'
  autoload :Organization,                                       '2020-03-01/generated/azure_mgmt_confluent/organization.rb'
  autoload :ConfluentManagementClient,                          '2020-03-01/generated/azure_mgmt_confluent/confluent_management_client.rb'

  module Models
    autoload :OfferDetail,                                        '2020-03-01/generated/azure_mgmt_confluent/models/offer_detail.rb'
    autoload :UserDetail,                                         '2020-03-01/generated/azure_mgmt_confluent/models/user_detail.rb'
    autoload :ConfluentAgreementResourceListResponse,             '2020-03-01/generated/azure_mgmt_confluent/models/confluent_agreement_resource_list_response.rb'
    autoload :OperationDisplay,                                   '2020-03-01/generated/azure_mgmt_confluent/models/operation_display.rb'
    autoload :OperationResult,                                    '2020-03-01/generated/azure_mgmt_confluent/models/operation_result.rb'
    autoload :ErrorResponseBody,                                  '2020-03-01/generated/azure_mgmt_confluent/models/error_response_body.rb'
    autoload :OrganizationResourceUpdate,                         '2020-03-01/generated/azure_mgmt_confluent/models/organization_resource_update.rb'
    autoload :ConfluentAgreementResource,                         '2020-03-01/generated/azure_mgmt_confluent/models/confluent_agreement_resource.rb'
    autoload :OrganizationResourceProperties,                     '2020-03-01/generated/azure_mgmt_confluent/models/organization_resource_properties.rb'
    autoload :ResourceProviderDefaultErrorResponse,               '2020-03-01/generated/azure_mgmt_confluent/models/resource_provider_default_error_response.rb'
    autoload :OrganizationResource,                               '2020-03-01/generated/azure_mgmt_confluent/models/organization_resource.rb'
    autoload :OperationListResult,                                '2020-03-01/generated/azure_mgmt_confluent/models/operation_list_result.rb'
    autoload :OrganizationResourceListResult,                     '2020-03-01/generated/azure_mgmt_confluent/models/organization_resource_list_result.rb'
    autoload :OrganizationResourcePropertiesOfferDetail,          '2020-03-01/generated/azure_mgmt_confluent/models/organization_resource_properties_offer_detail.rb'
    autoload :OrganizationResourcePropertiesUserDetail,           '2020-03-01/generated/azure_mgmt_confluent/models/organization_resource_properties_user_detail.rb'
    autoload :ProvisionState,                                     '2020-03-01/generated/azure_mgmt_confluent/models/provision_state.rb'
    autoload :SaaSOfferStatus,                                    '2020-03-01/generated/azure_mgmt_confluent/models/saa_soffer_status.rb'
  end
end
