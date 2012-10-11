#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "azure/core/http/http_filter"

module Azure
  module Core
    module Http 
      # A HttpFilter implementation that creates a authorization signature which is added to the request headers
      class SignerFilter < HttpFilter
        def initialize(signer, account_name)
          @signer = signer
          @account_name = account_name
        end

        def call(req, _next)
          signature = @signer.sign(req.method, req.uri, req.headers)
          req.headers["Authorization"] = "#{@signer.name} #{@account_name}:#{signature}"
          _next.call
        end
      end
    end
  end
end