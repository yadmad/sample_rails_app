class User < ApplicationRecord
  VALID_EMAIL_REGEX = /[[:alnum:]\.]+@[[:alnum:]]+\.[a-z]{3}/
  validates(:name, presence: true)
  validates :email, presence: true, length: {maximum: 100}, format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}

  before_save {email.downcase!}
end
