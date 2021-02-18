# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30_preview
  #
  # GallerySharingProfile
  #
  class GallerySharingProfile
    include MsRestAzure

    #
    # Creates and initializes a new instance of the GallerySharingProfile class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ComputeManagementClient] reference to the ComputeManagementClient
    attr_reader :client

    #
    # Update sharing profile of a gallery.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param gallery_name [String] The name of the Shared Image Gallery.
    # @param sharing_update [SharingUpdate] Parameters supplied to the update
    # gallery sharing profile.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SharingUpdate] operation results.
    #
    def update(resource_group_name, gallery_name, sharing_update, custom_headers:nil)
      response = update_async(resource_group_name, gallery_name, sharing_update, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param gallery_name [String] The name of the Shared Image Gallery.
    # @param sharing_update [SharingUpdate] Parameters supplied to the update
    # gallery sharing profile.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def update_async(resource_group_name, gallery_name, sharing_update, custom_headers:nil)
      # Send request
      promise = begin_update_async(resource_group_name, gallery_name, sharing_update, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Compute::Mgmt::V2020_09_30_preview::Models::SharingUpdate.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Update sharing profile of a gallery.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param gallery_name [String] The name of the Shared Image Gallery.
    # @param sharing_update [SharingUpdate] Parameters supplied to the update
    # gallery sharing profile.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SharingUpdate] operation results.
    #
    def begin_update(resource_group_name, gallery_name, sharing_update, custom_headers:nil)
      response = begin_update_async(resource_group_name, gallery_name, sharing_update, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Update sharing profile of a gallery.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param gallery_name [String] The name of the Shared Image Gallery.
    # @param sharing_update [SharingUpdate] Parameters supplied to the update
    # gallery sharing profile.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_update_with_http_info(resource_group_name, gallery_name, sharing_update, custom_headers:nil)
      begin_update_async(resource_group_name, gallery_name, sharing_update, custom_headers:custom_headers).value!
    end

    #
    # Update sharing profile of a gallery.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param gallery_name [String] The name of the Shared Image Gallery.
    # @param sharing_update [SharingUpdate] Parameters supplied to the update
    # gallery sharing profile.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_update_async(resource_group_name, gallery_name, sharing_update, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'gallery_name is nil' if gallery_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'sharing_update is nil' if sharing_update.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Compute::Mgmt::V2020_09_30_preview::Models::SharingUpdate.mapper()
      request_content = @client.serialize(request_mapper,  sharing_update)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/share'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'galleryName' => gallery_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
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
            result_mapper = Azure::Compute::Mgmt::V2020_09_30_preview::Models::SharingUpdate.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Compute::Mgmt::V2020_09_30_preview::Models::SharingUpdate.mapper()
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
