# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_03_31
  #
  # Consumption management client provides access to consumption resources for
  # Azure Enterprise Subscriptions.
  #
  class GetBalancesByBillingAccount
    include MsRestAzure

    #
    # Creates and initializes a new instance of the GetBalancesByBillingAccount class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ConsumptionManagementClient] reference to the ConsumptionManagementClient
    attr_reader :client

    #
    # Gets the balances for a scope by billing period and billingAccountId.
    # Balances are available via this API only for May 1, 2014 or later.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param billing_period_name [String] Billing Period Name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Balance] operation results.
    #
    def by_billing_period(billing_account_id, billing_period_name, custom_headers:nil)
      response = by_billing_period_async(billing_account_id, billing_period_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the balances for a scope by billing period and billingAccountId.
    # Balances are available via this API only for May 1, 2014 or later.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param billing_period_name [String] Billing Period Name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def by_billing_period_with_http_info(billing_account_id, billing_period_name, custom_headers:nil)
      by_billing_period_async(billing_account_id, billing_period_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the balances for a scope by billing period and billingAccountId.
    # Balances are available via this API only for May 1, 2014 or later.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param billing_period_name [String] Billing Period Name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def by_billing_period_async(billing_account_id, billing_period_name, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'billing_account_id is nil' if billing_account_id.nil?
      fail ArgumentError, 'billing_period_name is nil' if billing_period_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}/providers/Microsoft.Consumption/balances'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'billingAccountId' => billing_account_id,'billingPeriodName' => billing_period_name},
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
            result_mapper = Azure::Consumption::Mgmt::V2018_03_31::Models::Balance.mapper()
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
