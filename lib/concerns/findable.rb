module Findable
    module ClassMethods
        def find_by_name(name)
            self.detect{|o| o.name == name}
        end
    end
end