class Medium < ApplicationRecord
  before_save { self.furigana.gsub! /\s+/, '' }
  validates :name,        presence: true
  validates :furigana,    presence: true,
                          format: { with: /\A\s*[ぁ-ろわをんゔー]+\s*\z/,
                                    message: 'は、ひらがなで記してください' }
  validates :website_url, url: { allow_blank: true,
                                 schemes: %w(http https),
                                 public_suffix: true,
                                 no_local: true }
end
