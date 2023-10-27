class Reporter < ApplicationRecord
  belongs_to :medium
  enum :desirability,
    { highly:      2,
      somewhat:    1,
      neutral:     0,
      not_very:   -1,
      not_at_all: -2
    },
    default: :neutral
  # String#my_prettify!: config/initializers/string_extensions.rb
  before_validation -> { self.furigana.my_prettify! }, on: [:create, :update]
  validates :name,        presence: true
  validates :furigana,    presence: true,
                          format: { with: /\A[\p{Hiragana}ー・]+( [\p{Hiragana}ー・]+)*\z/,
                                    message: 'は、ひらがなで記してください' }
end
