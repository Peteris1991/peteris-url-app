class ShortUrl < ApplicationRecord
  acts_as_tenant :account

  validates_presence_of :mini_url, :original_url

  before_validation :build_mini_url

  def formatted_original_url
    url = URI.parse(original_url)
    if url.scheme.present?
      original_url
    else
      'http://' + url.path
    end
  end

  private

    def build_mini_url
      loop do
        self.mini_url = SecureRandom.hex(3)
        break if ShortUrl.where(mini_url: self.mini_url).empty?
      end
    end
end
