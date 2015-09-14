class InterestUrl < ActiveRecord::Base

  def provider_html_class
    case provider
    when "google_plus"
      "google-plus"
    else
      provider
    end
  end

  def provider_name
    case provider
    when "google_plus"
      "Google Plus"
    when "linkedin"
      "LinkedIn"
    else
      provider.capitalize
    end
  end

end
