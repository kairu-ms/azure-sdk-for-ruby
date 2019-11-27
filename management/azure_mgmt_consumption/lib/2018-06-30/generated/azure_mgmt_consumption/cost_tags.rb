# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_06_30
  #
  # Consumption management client provides access to consumption resources for
  # Azure Enterprise Subscriptions.
  #
  class CostTags
    include MsRestAzure

    #
    # Creates and initializes a new instance of the CostTags class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ConsumptionManagementClient] reference to the ConsumptionManagementClient
    attr_reader :client

    #
    # Get cost tags for a billing account.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CostTag] operation results.
    #
    def get(billing_account_id, custom_headers:nil)
      response = get_async(billing_account_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get cost tags for a billing account.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(billing_account_id, custom_headers:nil)
      get_async(billing_account_id, custom_headers:custom_headers).value!
    end

    #
    # Get cost tags for a billing account.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(billing_account_id, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'billing_account_id is nil' if billing_account_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/providers/Microsoft.Consumption/costTags'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'billingAccountId' => billing_account_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Consumption::Mgmt::V2018_06_30::Models::CostTag.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The operation to create or update cost tags assiciated with a billing
    # account. Update operation requires latest eTag to be set in the request
    # mandatorily. You may obtain the latest eTag by performing a get operation.
    # Create operation does not require eTag.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param parameters [CostTag] Parameters supplied to the Create cost tags
    # operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CostTag] operation results.
    #
    def create_or_update(billing_account_id, parameters, custom_headers:nil)
      response = create_or_update_async(billing_account_id, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The operation to create or update cost tags assiciated with a billing
    # account. Update operation requires latest eTag to be set in the request
    # mandatorily. You may obtain the latest eTag by performing a get operation.
    # Create operation does not require eTag.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param parameters [CostTag] Parameters supplied to the Create cost tags
    # operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(billing_account_id, parameters, custom_headers:nil)
      create_or_update_async(billing_account_id, parameters, custom_headers:custom_headers).value!
    end

    #
    # The operation to create or update cost tags assiciated with a billing
    # account. Update operation requires latest eTag to be set in the request
    # mandatorily. You may obtain the latest eTag by performing a get operation.
    # Create operation does not require eTag.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param parameters [CostTag] Parameters supplied to the Create cost tags
    # operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(billing_account_id, parameters, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'billing_account_id is nil' if billing_account_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Consumption::Mgmt::V2018_06_30::Models::CostTag.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/providers/Microsoft.Consumption/costTags'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'billingAccountId' => billing_account_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Consumption::Mgmt::V2018_06_30::Models::CostTag.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Consumption::Mgmt::V2018_06_30::Models::CostTag.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
