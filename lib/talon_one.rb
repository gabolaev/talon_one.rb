=begin
#Talon.One API

#The Talon.One API is used to manage applications and campaigns, as well as to integrate with your application. The operations in the _Integration API_ section are used to integrate with our platform, while the other operations are used to manage applications and campaigns.  ### Where is the API?  The API is available at the same hostname as these docs. For example, if you are reading this page at `https://mycompany.talon.one/docs/api/`, the URL for the [updateCustomerProfile][] operation is `https://mycompany.talon.one/v1/customer_profiles/id`  [updateCustomerProfile]: #operation--v1-customer_profiles--integrationId--put 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

# Common files
require 'talon_one/api_client'
require 'talon_one/api_error'
require 'talon_one/version'
require 'talon_one/configuration'

# Models
require 'talon_one/models/api_error'
require 'talon_one/models/accept_coupon_effect_props'
require 'talon_one/models/accept_referral_effect_props'
require 'talon_one/models/access_log_entry'
require 'talon_one/models/account'
require 'talon_one/models/account_additional_cost'
require 'talon_one/models/account_analytics'
require 'talon_one/models/account_entity'
require 'talon_one/models/account_limits'
require 'talon_one/models/add_free_item_effect_props'
require 'talon_one/models/add_loyalty_points_effect_props'
require 'talon_one/models/additional_cost'
require 'talon_one/models/application'
require 'talon_one/models/application_api_key'
require 'talon_one/models/application_api_health'
require 'talon_one/models/application_customer'
require 'talon_one/models/application_customer_entity'
require 'talon_one/models/application_customer_search'
require 'talon_one/models/application_entity'
require 'talon_one/models/application_event'
require 'talon_one/models/application_session'
require 'talon_one/models/application_session_entity'
require 'talon_one/models/attribute'
require 'talon_one/models/attributes_mandatory'
require 'talon_one/models/attributes_settings'
require 'talon_one/models/base_saml_connection'
require 'talon_one/models/binding'
require 'talon_one/models/campaign'
require 'talon_one/models/campaign_analytics'
require 'talon_one/models/campaign_copy'
require 'talon_one/models/campaign_entity'
require 'talon_one/models/campaign_search'
require 'talon_one/models/campaign_set'
require 'talon_one/models/campaign_set_branch_node'
require 'talon_one/models/campaign_set_leaf_node'
require 'talon_one/models/campaign_set_node'
require 'talon_one/models/cart_item'
require 'talon_one/models/cart_item_adjustment'
require 'talon_one/models/change'
require 'talon_one/models/change_profile_password'
require 'talon_one/models/code_generator_settings'
require 'talon_one/models/coupon'
require 'talon_one/models/coupon_constraints'
require 'talon_one/models/coupon_created_effect_props'
require 'talon_one/models/coupon_rejection_reason'
require 'talon_one/models/coupon_reservations'
require 'talon_one/models/coupon_search'
require 'talon_one/models/coupon_value'
require 'talon_one/models/create_application_api_key'
require 'talon_one/models/customer_activity_report'
require 'talon_one/models/customer_analytics'
require 'talon_one/models/customer_inventory'
require 'talon_one/models/customer_profile'
require 'talon_one/models/customer_profile_search_query'
require 'talon_one/models/customer_profile_update'
require 'talon_one/models/customer_session'
require 'talon_one/models/customer_session_v2'
require 'talon_one/models/deduct_loyalty_points_effect_props'
require 'talon_one/models/effect'
require 'talon_one/models/effect_entity'
require 'talon_one/models/email_entity'
require 'talon_one/models/entity'
require 'talon_one/models/environment'
require 'talon_one/models/error_effect_props'
require 'talon_one/models/error_response'
require 'talon_one/models/error_source'
require 'talon_one/models/event'
require 'talon_one/models/event_type'
require 'talon_one/models/export'
require 'talon_one/models/feature_flag'
require 'talon_one/models/feature_flags'
require 'talon_one/models/features_feed'
require 'talon_one/models/func_arg_def'
require 'talon_one/models/function_def'
require 'talon_one/models/import'
require 'talon_one/models/import_coupons'
require 'talon_one/models/inline_response200'
require 'talon_one/models/inline_response2001'
require 'talon_one/models/inline_response20010'
require 'talon_one/models/inline_response20011'
require 'talon_one/models/inline_response20012'
require 'talon_one/models/inline_response20013'
require 'talon_one/models/inline_response20014'
require 'talon_one/models/inline_response20015'
require 'talon_one/models/inline_response20016'
require 'talon_one/models/inline_response20017'
require 'talon_one/models/inline_response20018'
require 'talon_one/models/inline_response20019'
require 'talon_one/models/inline_response2002'
require 'talon_one/models/inline_response20020'
require 'talon_one/models/inline_response20021'
require 'talon_one/models/inline_response20022'
require 'talon_one/models/inline_response20023'
require 'talon_one/models/inline_response20024'
require 'talon_one/models/inline_response20025'
require 'talon_one/models/inline_response20026'
require 'talon_one/models/inline_response20027'
require 'talon_one/models/inline_response20028'
require 'talon_one/models/inline_response20029'
require 'talon_one/models/inline_response2003'
require 'talon_one/models/inline_response20030'
require 'talon_one/models/inline_response2004'
require 'talon_one/models/inline_response2005'
require 'talon_one/models/inline_response2006'
require 'talon_one/models/inline_response2007'
require 'talon_one/models/inline_response2008'
require 'talon_one/models/inline_response2009'
require 'talon_one/models/integration_entity'
require 'talon_one/models/integration_event'
require 'talon_one/models/integration_profile_entity'
require 'talon_one/models/integration_request'
require 'talon_one/models/integration_state'
require 'talon_one/models/integration_state_v2'
require 'talon_one/models/ledger_entry'
require 'talon_one/models/library_attribute'
require 'talon_one/models/limit_config'
require 'talon_one/models/login_params'
require 'talon_one/models/loyalty'
require 'talon_one/models/loyalty_ledger'
require 'talon_one/models/loyalty_ledger_entry'
require 'talon_one/models/loyalty_membership'
require 'talon_one/models/loyalty_points'
require 'talon_one/models/loyalty_program'
require 'talon_one/models/loyalty_program_balance'
require 'talon_one/models/loyalty_program_ledgers'
require 'talon_one/models/loyalty_sub_ledger'
require 'talon_one/models/manager_config'
require 'talon_one/models/meta'
require 'talon_one/models/misc_update_user_latest_feature'
require 'talon_one/models/multi_application_entity'
require 'talon_one/models/mutable_entity'
require 'talon_one/models/new_account'
require 'talon_one/models/new_account_sign_up'
require 'talon_one/models/new_additional_cost'
require 'talon_one/models/new_application'
require 'talon_one/models/new_application_api_key'
require 'talon_one/models/new_attribute'
require 'talon_one/models/new_campaign'
require 'talon_one/models/new_campaign_set'
require 'talon_one/models/new_coupons'
require 'talon_one/models/new_customer_profile'
require 'talon_one/models/new_customer_session'
require 'talon_one/models/new_customer_session_v2'
require 'talon_one/models/new_event'
require 'talon_one/models/new_event_type'
require 'talon_one/models/new_feature_flags'
require 'talon_one/models/new_import'
require 'talon_one/models/new_invitation'
require 'talon_one/models/new_invite_email'
require 'talon_one/models/new_loyalty_program'
require 'talon_one/models/new_password'
require 'talon_one/models/new_password_email'
require 'talon_one/models/new_referral'
require 'talon_one/models/new_role'
require 'talon_one/models/new_ruleset'
require 'talon_one/models/new_saml_connection'
require 'talon_one/models/new_template_def'
require 'talon_one/models/new_user'
require 'talon_one/models/new_webhook'
require 'talon_one/models/notification'
require 'talon_one/models/redeem_referral_effect_props'
require 'talon_one/models/referral'
require 'talon_one/models/referral_created_effect_props'
require 'talon_one/models/referral_rejection_reason'
require 'talon_one/models/reject_coupon_effect_props'
require 'talon_one/models/reject_referral_effect_props'
require 'talon_one/models/role'
require 'talon_one/models/role_assign'
require 'talon_one/models/role_membership'
require 'talon_one/models/rollback_coupon_effect_props'
require 'talon_one/models/rollback_discount_effect_props'
require 'talon_one/models/rule'
require 'talon_one/models/ruleset'
require 'talon_one/models/saml_connection'
require 'talon_one/models/saml_connection_metadata'
require 'talon_one/models/saml_login_endpoint'
require 'talon_one/models/session'
require 'talon_one/models/set_discount_effect_props'
require 'talon_one/models/set_discount_per_item_effect_props'
require 'talon_one/models/show_bundle_metadata_effect_props'
require 'talon_one/models/show_notification_effect_props'
require 'talon_one/models/slot_def'
require 'talon_one/models/template_arg_def'
require 'talon_one/models/template_def'
require 'talon_one/models/trigger_webhook_effect_props'
require 'talon_one/models/update_account'
require 'talon_one/models/update_application'
require 'talon_one/models/update_attribute_effect_props'
require 'talon_one/models/update_campaign'
require 'talon_one/models/update_coupon'
require 'talon_one/models/update_coupon_batch'
require 'talon_one/models/update_loyalty_program'
require 'talon_one/models/update_role'
require 'talon_one/models/update_user'
require 'talon_one/models/user'
require 'talon_one/models/user_entity'
require 'talon_one/models/webhook'
require 'talon_one/models/webhook_activation_log_entry'
require 'talon_one/models/webhook_log_entry'

# APIs
require 'talon_one/api/integration_api'
require 'talon_one/api/management_api'

module TalonOne
  class << self
    # Customize default settings for the SDK using block.
    #   TalonOne.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
