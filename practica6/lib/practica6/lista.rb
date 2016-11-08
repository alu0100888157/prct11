
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
        def to_s
        
            @ob = head
            @var = ""
            while @ob != nil do
                objeto = Dieta.new(@ob.value[0],@ob.value[1],@ob.value[2],@ob.value[3],@ob.value[4],@ob.value[5],@ob.value[6], @ob.value[7],@ob.value[8])

                @var += "#{objeto.to_s}"
               
                @ob = @ob.next
            end
        end
end