Node = Struct.new(:value, :next, :prev)
class List
    attr_accessor :head, :tail
        def initialize
            @head = @tail = nil
        end
        
        
        
        def add_to_list(value)
            node = Node.new(value)
        
            @head = node if @head.nil?
            unless @tail.nil?
                @tail.next = node 
                node.prev = @tail
            end
            @tail = node
        end
        # def extract_end
        #     var = ""
        #     if(@tail ==nil)
        #         return false
        #     else
        #         var = @tail.value
        #         @tail = @tail.prev
        #         return var
        #     end
        # end
        
        def to_s(letras)
            @letras = letras
            @ob = head
            @aux = 0
            @var = ""
            while @ob != nil do
                if(@ob.value[9]==nil) 
                    
                        objeto = Dieta.new(@ob.value[0],@ob.value[1],@ob.value[2],@ob.value[3],@ob.value[4],@ob.value[5],@ob.value[6], @ob.value[7],@ob.value[8])
                        @var += "#{@letras[@aux]}) #{objeto.to_s}"
                       @aux = @aux + 1
                        @ob = @ob.next
                    
                else 
                        if(@ob.value[10]==nil)
                            ob_food = Alimentos.new(@ob.value[0],@ob.value[1],@ob.value[2],@ob.value[3],@ob.value[4],@ob.value[5],@ob.value[6], @ob.value[7],@ob.value[8], @ob.value[9])
                            @var +="#{@letras[@aux]}) #{ob_food.to_s}"
                            @aux = @aux + 1
                            @ob = @ob.next
                        else
                            ob_edad = Edad.new(@ob.value[0],@ob.value[1],@ob.value[2],@ob.value[3],@ob.value[4],@ob.value[5],@ob.value[6], @ob.value[7],@ob.value[8], @ob.value[9], @ob.value[10])
                            @var += "#{@letras[@aux]}) #{ob_edad.to_s}"
                            @aux = @aux + 1
                            @ob = @ob.next
                        end
                end
            end
            "#{@var}"
        end
end