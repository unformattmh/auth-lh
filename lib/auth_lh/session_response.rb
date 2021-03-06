module AuthLh
  class SessionResponse
    attr_accessor :user, :destination_url

    def initialize(attributes={})
      attributes.each do |k,v|
        if k.to_s == 'user'
          self.user = User.new(v) if v.present?
        else
          self.send("#{k}=", v)
        end
      end
    end
  end
end
