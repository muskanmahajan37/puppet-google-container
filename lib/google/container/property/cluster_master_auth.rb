# Copyright 2017 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

require 'google/container/property/base'

module Google
  module Container
    module Data
      # A class to manage data for master_auth for cluster.
      class ClusterMasterAuth
        include Comparable

        attr_reader :username
        attr_reader :password
        attr_reader :cluster_ca_certificate
        attr_reader :client_certificate
        attr_reader :client_key

        def to_json(_arg = nil)
          {
            'username' => username,
            'password' => password,
            'clusterCaCertificate' => cluster_ca_certificate,
            'clientCertificate' => client_certificate,
            'clientKey' => client_key
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            username: username,
            password: password,
            cluster_ca_certificate: cluster_ca_certificate,
            client_certificate: client_certificate,
            client_key: client_key
          }.reject { |_k, v| v.nil? }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? ClusterMasterAuth
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? ClusterMasterAuth
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            result = compare[:self] <=> compare[:other]
            return result unless result.zero?
          end
          0
        end

        private

        def compare_fields(other)
          [
            { self: username, other: other.username },
            { self: password, other: other.password },
            {
              self: cluster_ca_certificate,
              other: other.cluster_ca_certificate
            },
            { self: client_certificate, other: other.client_certificate },
            { self: client_key, other: other.client_key }
          ]
        end
      end

      # Manages a ClusterMasterAuth nested object
      # Data is coming from the GCP API
      class ClusterMasterAuthApi < ClusterMasterAuth
        def initialize(args)
          @username =
            Google::Container::Property::String.api_munge(args['username'])
          @password =
            Google::Container::Property::String.api_munge(args['password'])
          @cluster_ca_certificate =
            Google::Container::Property::String.api_munge(
              args['clusterCaCertificate']
            )
          @client_certificate = Google::Container::Property::String.api_munge(
            args['clientCertificate']
          )
          @client_key =
            Google::Container::Property::String.api_munge(args['clientKey'])
        end
      end

      # Manages a ClusterMasterAuth nested object
      # Data is coming from the Puppet manifest
      class ClusterMasterAuthCatalog < ClusterMasterAuth
        def initialize(args)
          @username =
            Google::Container::Property::String.unsafe_munge(args['username'])
          @password =
            Google::Container::Property::String.unsafe_munge(args['password'])
          @cluster_ca_certificate =
            Google::Container::Property::String.unsafe_munge(
              args['cluster_ca_certificate']
            )
          @client_certificate =
            Google::Container::Property::String.unsafe_munge(
              args['client_certificate']
            )
          @client_key =
            Google::Container::Property::String.unsafe_munge(args['client_key'])
        end
      end
    end

    module Property
      # A class to manage input to master_auth for cluster.
      class ClusterMasterAuth < Google::Container::Property::Base
        # Used for parsing Puppet catalog
        def unsafe_munge(value)
          self.class.unsafe_munge(value)
        end

        # Used for parsing Puppet catalog
        def self.unsafe_munge(value)
          return if value.nil?
          Data::ClusterMasterAuthCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_munge(value)
          return if value.nil?
          Data::ClusterMasterAuthApi.new(value)
        end
      end
    end
  end
end
