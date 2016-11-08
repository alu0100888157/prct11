
class List 
    attr_accessor :head
        def initialize
            @head = @tail = nil
        end
        def add_to_list(value)
            node = Node.new(value)
        
            @head = node if @head.nil?
            @tail.next = node unless @tail.nil?
        
            @tail = node
        end
end