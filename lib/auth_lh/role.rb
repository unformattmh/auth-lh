module AuthLh
  class Role
    attr_accessor :code, :name, :position, :assignable

    def initialize(attributes={})
      attributes.each do |k,v|
        self.send("#{k}=", v)
      end
    end
  end
end
