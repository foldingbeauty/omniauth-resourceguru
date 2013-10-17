require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class ResourceGuru < OmniAuth::Strategies::OAuth2
      option :name, "resourceguru"

      option :client_options, {
        :site => 'https://api.resourceguruapp.com/v1',
        :authorize_url => 'https://api.resourceguruapp.com/oauth/authorize',
        :token_url => 'https://api.resourceguruapp.com/oauth/access_token'
      }

      def accounts
        access_token.options[:mode] = :query
        @accounts ||= access_token.get('accounts').parsed
      end

    end
  end
end

OmniAuth.config.add_camelization 'resourceguru', 'ResourceGuru'
