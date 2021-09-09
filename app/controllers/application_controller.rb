class ApplicationController < ActionController::Base
  set_current_tenant_through_filter
  before_action :set_current_account

  def set_current_account
    return unless current_user.present?
    current_account = current_user.account
    ActsAsTenant.current_tenant = current_account
  end

    def after_sign_in_path_for(resource)
        short_urls_url
    end
end
