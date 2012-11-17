require "pacifier/version"

module Pacifier
  extend ActiveSupport::Concern

  included do
    unless Rails.application.config.consider_all_requests_local
      rescue_from ::Exception, :with => :render_error
    end
  end

  private

  def render_error(exception)
    Rails.logger.error exception.to_s
    flash[:alert] = "We're not able to show you that page right now.\nPlease try again later."
    redirect_to root_path
  end
end
