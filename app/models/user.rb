class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :email, { format: { with: URI::MailTo::EMAIL_REGEXP } }
    validates :password, length: { in: 6..34 }
    validate :password_complexity
    
    def password_complexity
        if password.present? and not password.match(/(?=.*[A-Z])(?=.*\W)/)
            errors.add :password, "must include at least one uppercase letter and one special character"
        end
    end
    
end
