module AuthLh
  class User
    attr_accessor :code, :email, :jabber, :name, :login,
      :shop_code, :enabled, :role_codes, :password_expired

    def initialize(attributes={})
      attributes.each do |k,v|
        self.send("#{k}=", v)
      end
    end

    def password_expired?
      password_expired == true
    end

    def has_role?(role_code)
      role_codes.include?(role_code.to_s)
    end
  end
end

