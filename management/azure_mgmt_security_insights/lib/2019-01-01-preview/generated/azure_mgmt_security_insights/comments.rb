# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  #
  # API spec for Microsoft.SecurityInsights (Azure Security Insights) resource
  # provider
  #
  class Comments
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Comments class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SecurityInsights] reference to the SecurityInsights
    attr_reader :client

    #
    # Gets all case comments.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param operational_insights_resource_provider [String] The namespace of
    # workspaces resource provider- Microsoft.OperationalInsights.
    # @param workspace_name [String] The name of the workspace.
    # @param case_id [String] Case ID
    # @param filter [String] Filters the results, based on a Boolean condition.
    # Optional.
    # @param orderby [String] Sorts the results. Optional.
    # @param top [Integer] Returns only the first n results. Optional.
    # @param skip_token [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls. Optional.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<CaseComment>] operation results.
    #
    def list_by_case(resource_group_name, operational_insights_resource_provider, workspace_name, case_id, filter:nil, orderby:nil, top:nil, skip_token:nil, custom_headers:nil)
      first_page = list_by_case_as_lazy(resource_group_name, operational_insights_resource_provider, workspace_name, case_id, filter:filter, orderby:orderby, top:top, skip_token:skip_token, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all case comments.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param operational_insights_resource_provider [String] The namespace of
    # workspaces resource provider- Microsoft.OperationalInsights.
    # @param workspace_name [String] The name of the workspace.
    # @param case_id [String] Case ID
    # @param filter [String] Filters the results, based on a Boolean condition.
    # Optional.
    # @param orderby [String] Sorts the results. Optional.
    # @param top [Integer] Returns only the first n results. Optional.
    # @param skip_token [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls. Optional.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_case_with_http_info(resource_group_name, operational_insights_resource_provider, workspace_name, case_id, filter:nil, orderby:nil, top:nil, skip_token:nil, custom_headers:nil)
      list_by_case_async(resource_group_name, operational_insights_resource_provider, workspace_name, case_id, filter:filter, orderby:orderby, top:top, skip_token:skip_token, custom_headers:custom_headers).value!
    end

    #
    # Gets all case comments.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param operational_insights_resource_provider [String] The namespace of
    # workspaces resource provider- Microsoft.OperationalInsights.
    # @param workspace_name [String] The name of the workspace.
    # @param case_id [String] Case ID
    # @param filter [String] Filters the results, based on a Boolean condition.
    # Optional.
    # @param orderby [String] Sorts the results. Optional.
    # @param top [Integer] Returns only the first n results. Optional.
    # @param skip_token [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls. Optional.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_case_async(resource_group_name, operational_insights_resource_provider, workspace_name, case_id, filter:nil, orderby:nil, top:nil, skip_token:nil, custom_headers:nil)
      @client.api_version = '2019-01-01-preview'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'Pattern': '^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$'" if !@client.subscription_id.nil? && @client.subscription_id.match(Regexp.new('^^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$$')).nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'operational_insights_resource_provider is nil' if operational_insights_resource_provider.nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MaxLength': '90'" if !workspace_name.nil? && workspace_name.length > 90
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MinLength': '1'" if !workspace_name.nil? && workspace_name.length < 1
      fail ArgumentError, 'case_id is nil' if case_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{operationalInsightsResourceProvider}/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/cases/{caseId}/comments'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'operationalInsightsResourceProvider' => operational_insights_resource_provider,'workspaceName' => workspace_name,'caseId' => case_id},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$orderby' => orderby,'$top' => top,'$skipToken' => skip_token},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SecurityInsights::Mgmt::V2019_01_01_preview::Models::CaseCommentList.mapper()
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
    # Gets all case comments.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CaseCommentList] operation results.
    #
    def list_by_case_next(next_page_link, custom_headers:nil)
      response = list_by_case_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all case comments.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_case_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_case_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets all case comments.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_case_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SecurityInsights::Mgmt::V2019_01_01_preview::Models::CaseCommentList.mapper()
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
    # Gets all case comments.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param operational_insights_resource_provider [String] The namespace of
    # workspaces resource provider- Microsoft.OperationalInsights.
    # @param workspace_name [String] The name of the workspace.
    # @param case_id [String] Case ID
    # @param filter [String] Filters the results, based on a Boolean condition.
    # Optional.
    # @param orderby [String] Sorts the results. Optional.
    # @param top [Integer] Returns only the first n results. Optional.
    # @param skip_token [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls. Optional.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CaseCommentList] which provide lazy access to pages of the response.
    #
    def list_by_case_as_lazy(resource_group_name, operational_insights_resource_provider, workspace_name, case_id, filter:nil, orderby:nil, top:nil, skip_token:nil, custom_headers:nil)
      response = list_by_case_async(resource_group_name, operational_insights_resource_provider, workspace_name, case_id, filter:filter, orderby:orderby, top:top, skip_token:skip_token, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_case_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
