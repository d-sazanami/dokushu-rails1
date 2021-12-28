class User < ApplicationRecord
    validate :email_check

    private
    def email_check
        email_pattern = /\A[\w+\._]+@[a-z\d\._]+\.[a-z]+\z/
        unless email_pattern.match(self.email)
            errors.add(:email, "正しいメールアドレスを入力してください")
        end
    end
    
end
