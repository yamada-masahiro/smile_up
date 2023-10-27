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
  # before_save { self.furigana.gsub!(/\s+/, '') }
  validates :name,        presence: true
  validates :furigana,    presence: true,
                          format: { with: /\A[\p{Hiragana}ー・]+( [\p{Hiragana}ー・]+)*\z/,
                                    message: 'は、ひらがなで記してください' }
  validates :independent, presence: true,
                          inclusion: { in: [false, true] }
  validates :medium_id,   presence: true, unless: :independent?
end
