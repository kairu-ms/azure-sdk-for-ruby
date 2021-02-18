# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_08_01
  #
  # A service client - single point of access to the REST API.
  #
  class OperationalInsightsManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The API version to use for this operation.
    attr_reader :api_version

    # @return [String] The ID of the target subscription.
    attr_accessor :subscription_id

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [DataExports] data_exports
    attr_reader :data_exports

    # @return [DataSources] data_sources
    attr_reader :data_sources

    # @return [IntelligencePacks] intelligence_packs
    attr_reader :intelligence_packs

    # @return [LinkedServices] linked_services
    attr_reader :linked_services

    # @return [LinkedStorageAccounts] linked_storage_accounts
    attr_reader :linked_storage_accounts

    # @return [ManagementGroups] management_groups
    attr_reader :management_groups

    # @return [Operations] operations
    attr_reader :operations

    # @return [OperationStatuses] operation_statuses
    attr_reader :operation_statuses

    # @return [SharedKeysOperations] shared_keys_operations
    attr_reader :shared_keys_operations

    # @return [Usages] usages
    attr_reader :usages

    # @return [Workspaces] workspaces
    attr_reader :workspaces

    # @return [DeletedWorkspaces] deleted_workspaces
    attr_reader :deleted_workspaces

    # @return [Clusters] clusters
    attr_reader :clusters

    # @return [StorageInsightConfigs] storage_insight_configs
    attr_reader :storage_insight_configs

    # @return [SavedSearches] saved_searches
    attr_reader :saved_searches

    # @return [AvailableServiceTiers] available_service_tiers
    attr_reader :available_service_tiers

    # @return [Gateways] gateways
    attr_reader :gateways

    # @return [Schema] schema
    attr_reader :schema

    # @return [WorkspacePurge] workspace_purge
    attr_reader :workspace_purge

    # @return [Tables] tables
    attr_reader :tables

    #
    # Creates initializes a new instance of the OperationalInsightsManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @data_exports = DataExports.new(self)
      @data_sources = DataSources.new(self)
      @intelligence_packs = IntelligencePacks.new(self)
      @linked_services = LinkedServices.new(self)
      @linked_storage_accounts = LinkedStorageAccounts.new(self)
      @management_groups = ManagementGroups.new(self)
      @operations = Operations.new(self)
      @operation_statuses = OperationStatuses.new(self)
      @shared_keys_operations = SharedKeysOperations.new(self)
      @usages = Usages.new(self)
      @workspaces = Workspaces.new(self)
      @deleted_workspaces = DeletedWorkspaces.new(self)
      @clusters = Clusters.new(self)
      @storage_insight_configs = StorageInsightConfigs.new(self)
      @saved_searches = SavedSearches.new(self)
      @available_service_tiers = AvailableServiceTiers.new(self)
      @gateways = Gateways.new(self)
      @schema = Schema.new(self)
      @workspace_purge = WorkspacePurge.new(self)
      @tables = Tables.new(self)
      @api_version = '2020-08-01'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_operational_insights'
        sdk_information = "#{sdk_information}/0.20.0"
        add_user_agent_information(sdk_information)
    end
  end
end
