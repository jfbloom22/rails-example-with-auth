class User < ApplicationRecord
    has_secure_password
    validates :first_name, :last_name, :email, presence: true
    validates :first_name, :last_name, length: { in: 2..100 }
    validates :email, uniqueness: true
    validates :password, length: { in: 6..34 }
    validate :password_complexity
    
    def password_complexity
        if password.present? and not password.match(/(?=.*[A-Z])(?=.*\W)/)
            errors.add :password, "must include at least one uppercase letter and one special character"
        end
    end
    
end
