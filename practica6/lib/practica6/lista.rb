Node = Struct.new(:value, :next)


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
        def to_s(letras)
            @letras = letras
            @aux = 0
            @ob = head
            @var = ""
            while @ob != nil do
                objeto = Dieta.new(@ob.value[0],@ob.value[1],@ob.value[2],@ob.value[3],@ob.value[4],@ob.value[5],@ob.value[6], @ob.value[7],@ob.value[8])
                @var += "#{@letras[@aux]}) #{objeto.to_s}"
               @aux = @aux + 1
                @ob = @ob.next
            end
            "#{@var}"
        end
end