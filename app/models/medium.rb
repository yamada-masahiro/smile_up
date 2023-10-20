class Medium < ApplicationRecord
  validates :name,        presence: true
  validates :furigana,    presence: true
  validates :website_url, url: { allow_blank: true,
                                 schemes: %w(http https),
                                 public_suffix: true,
                                 no_local: true }
end
