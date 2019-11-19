# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Maintenance::Mgmt::V2018_06_01_preview
  #
  # Azure Maintenance Management Client
  #
  class ConfigurationAssignments
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ConfigurationAssignments class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MaintenanceManagementClient] reference to the MaintenanceManagementClient
    attr_reader :client

    #
    # Create configuration assignment
    #
    # Register configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Configuration assignment name
    # @param configuration_assignment [ConfigurationAssignment] The
    # configurationAssignment
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConfigurationAssignment] operation results.
    #
    def create_or_update_parent(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, configuration_assignment_name, configuration_assignment, custom_headers:nil)
      response = create_or_update_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, configuration_assignment_name, configuration_assignment, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create configuration assignment
    #
    # Register configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Configuration assignment name
    # @param configuration_assignment [ConfigurationAssignment] The
    # configurationAssignment
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_parent_with_http_info(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, configuration_assignment_name, configuration_assignment, custom_headers:nil)
      create_or_update_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, configuration_assignment_name, configuration_assignment, custom_headers:custom_headers).value!
    end

    #
    # Create configuration assignment
    #
    # Register configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Configuration assignment name
    # @param configuration_assignment [ConfigurationAssignment] The
    # configurationAssignment
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, configuration_assignment_name, configuration_assignment, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'provider_name is nil' if provider_name.nil?
      fail ArgumentError, 'resource_parent_type is nil' if resource_parent_type.nil?
      fail ArgumentError, 'resource_parent_name is nil' if resource_parent_name.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'configuration_assignment_name is nil' if configuration_assignment_name.nil?
      fail ArgumentError, 'configuration_assignment is nil' if configuration_assignment.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ConfigurationAssignment.mapper()
      request_content = @client.serialize(request_mapper,  configuration_assignment)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{providerName}/{resourceParentType}/{resourceParentName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/configurationAssignments/{configurationAssignmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'providerName' => provider_name,'resourceParentType' => resource_parent_type,'resourceParentName' => resource_parent_name,'resourceType' => resource_type,'resourceName' => resource_name,'configurationAssignmentName' => configuration_assignment_name},
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
            result_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ConfigurationAssignment.mapper()
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
    # Unregister configuration for resource
    #
    # Unregister configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Unique configuration assignment
    # name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConfigurationAssignment] operation results.
    #
    def delete_parent(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, configuration_assignment_name, custom_headers:nil)
      response = delete_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, configuration_assignment_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Unregister configuration for resource
    #
    # Unregister configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Unique configuration assignment
    # name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_parent_with_http_info(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, configuration_assignment_name, custom_headers:nil)
      delete_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, configuration_assignment_name, custom_headers:custom_headers).value!
    end

    #
    # Unregister configuration for resource
    #
    # Unregister configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Unique configuration assignment
    # name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, configuration_assignment_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'provider_name is nil' if provider_name.nil?
      fail ArgumentError, 'resource_parent_type is nil' if resource_parent_type.nil?
      fail ArgumentError, 'resource_parent_name is nil' if resource_parent_name.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'configuration_assignment_name is nil' if configuration_assignment_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{providerName}/{resourceParentType}/{resourceParentName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/configurationAssignments/{configurationAssignmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'providerName' => provider_name,'resourceParentType' => resource_parent_type,'resourceParentName' => resource_parent_name,'resourceType' => resource_type,'resourceName' => resource_name,'configurationAssignmentName' => configuration_assignment_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

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
            result_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ConfigurationAssignment.mapper()
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
    # Create configuration assignment
    #
    # Register configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Configuration assignment name
    # @param configuration_assignment [ConfigurationAssignment] The
    # configurationAssignment
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConfigurationAssignment] operation results.
    #
    def create_or_update(resource_group_name, provider_name, resource_type, resource_name, configuration_assignment_name, configuration_assignment, custom_headers:nil)
      response = create_or_update_async(resource_group_name, provider_name, resource_type, resource_name, configuration_assignment_name, configuration_assignment, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create configuration assignment
    #
    # Register configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Configuration assignment name
    # @param configuration_assignment [ConfigurationAssignment] The
    # configurationAssignment
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, provider_name, resource_type, resource_name, configuration_assignment_name, configuration_assignment, custom_headers:nil)
      create_or_update_async(resource_group_name, provider_name, resource_type, resource_name, configuration_assignment_name, configuration_assignment, custom_headers:custom_headers).value!
    end

    #
    # Create configuration assignment
    #
    # Register configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Configuration assignment name
    # @param configuration_assignment [ConfigurationAssignment] The
    # configurationAssignment
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, provider_name, resource_type, resource_name, configuration_assignment_name, configuration_assignment, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'provider_name is nil' if provider_name.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'configuration_assignment_name is nil' if configuration_assignment_name.nil?
      fail ArgumentError, 'configuration_assignment is nil' if configuration_assignment.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ConfigurationAssignment.mapper()
      request_content = @client.serialize(request_mapper,  configuration_assignment)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/configurationAssignments/{configurationAssignmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'providerName' => provider_name,'resourceType' => resource_type,'resourceName' => resource_name,'configurationAssignmentName' => configuration_assignment_name},
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
            result_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ConfigurationAssignment.mapper()
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
    # Unregister configuration for resource
    #
    # Unregister configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Unique configuration assignment
    # name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConfigurationAssignment] operation results.
    #
    def delete(resource_group_name, provider_name, resource_type, resource_name, configuration_assignment_name, custom_headers:nil)
      response = delete_async(resource_group_name, provider_name, resource_type, resource_name, configuration_assignment_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Unregister configuration for resource
    #
    # Unregister configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Unique configuration assignment
    # name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, provider_name, resource_type, resource_name, configuration_assignment_name, custom_headers:nil)
      delete_async(resource_group_name, provider_name, resource_type, resource_name, configuration_assignment_name, custom_headers:custom_headers).value!
    end

    #
    # Unregister configuration for resource
    #
    # Unregister configuration for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param configuration_assignment_name [String] Unique configuration assignment
    # name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, provider_name, resource_type, resource_name, configuration_assignment_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'provider_name is nil' if provider_name.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'configuration_assignment_name is nil' if configuration_assignment_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/configurationAssignments/{configurationAssignmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'providerName' => provider_name,'resourceType' => resource_type,'resourceName' => resource_name,'configurationAssignmentName' => configuration_assignment_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

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
            result_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ConfigurationAssignment.mapper()
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
    # List configurationAssignments for resource
    #
    # List configurationAssignments for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ListConfigurationAssignmentsResult] operation results.
    #
    def list_parent(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, custom_headers:nil)
      response = list_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List configurationAssignments for resource
    #
    # List configurationAssignments for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_parent_with_http_info(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, custom_headers:nil)
      list_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, custom_headers:custom_headers).value!
    end

    #
    # List configurationAssignments for resource
    #
    # List configurationAssignments for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'provider_name is nil' if provider_name.nil?
      fail ArgumentError, 'resource_parent_type is nil' if resource_parent_type.nil?
      fail ArgumentError, 'resource_parent_name is nil' if resource_parent_name.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{providerName}/{resourceParentType}/{resourceParentName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/configurationAssignments'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'providerName' => provider_name,'resourceParentType' => resource_parent_type,'resourceParentName' => resource_parent_name,'resourceType' => resource_type,'resourceName' => resource_name},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ListConfigurationAssignmentsResult.mapper()
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
    # List configurationAssignments for resource
    #
    # List configurationAssignments for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ListConfigurationAssignmentsResult] operation results.
    #
    def list(resource_group_name, provider_name, resource_type, resource_name, custom_headers:nil)
      response = list_async(resource_group_name, provider_name, resource_type, resource_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List configurationAssignments for resource
    #
    # List configurationAssignments for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, provider_name, resource_type, resource_name, custom_headers:nil)
      list_async(resource_group_name, provider_name, resource_type, resource_name, custom_headers:custom_headers).value!
    end

    #
    # List configurationAssignments for resource
    #
    # List configurationAssignments for resource.
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, provider_name, resource_type, resource_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'provider_name is nil' if provider_name.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/configurationAssignments'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'providerName' => provider_name,'resourceType' => resource_type,'resourceName' => resource_name},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ListConfigurationAssignmentsResult.mapper()
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