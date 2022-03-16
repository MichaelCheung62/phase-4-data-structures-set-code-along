class MySet

    def initialize(enumerable =[])
        @hash = {}
        enumerable.each do |value|
            add(value)
        end        
    end

    def include?(value)
     hash.has_key?(value)
    end

    def add(value)
     hash[value] = true
     self
    end

    def delete(value)
     hash.delete(value) 
     self   
    end

    def clear
     hash.clear    
    end

    def size
     hash.size
    end

    def each
     self.hash.keys.each(&block) 
     self   
    end

    def inspect
     "#<#{self.class.name}: {#{self.hash.keysjoin(', ')}}>"
    end

    private

    attr_reader :hash


end