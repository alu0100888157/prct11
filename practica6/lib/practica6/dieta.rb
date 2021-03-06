
require "practica6/version"

class MenuDiet

 attr_accessor :name, :titulo, :ingesta, :platos, :porcentajes

def initialize(name, &block)
    self.name = name
    self.titulo = ""
    self.ingesta = []
    self.platos = []
    self.porcentajes = []
    if block_given?
        if block.arity == 1
            yield self
        else
            instance_eval &block
        end
    end
end

def met_titulo(name)
    titulo << name
end
def met_ingesta(options = {})
    ingest = []
 
    if (options[:min] && options[:max])
        ingest << options[:min]
        ingest << options[:max] 
    else
        ingest << options[:max]
    end
    
    ingesta << ingest
        
end

def plato(options = {})
    aux = []
    aux << "#{options[:descripcion]}"
    aux << "#{options[:porcion]}"
    aux << "#{options[:gramos]}"
    
    platos << aux
end

def porcent(options = {})
    val = []
    val << "#{options[:vct]}"
    val << "#{options[:proteinas]}"
    val << "#{options[:grasas]}"
    val << "#{options[:hidratos]}"
    
    porcentajes << val
    
end 


def to_s
    output = name
    output << "\n#{'=' * name.size}\n\n"
    output << "#{titulo} "
    ingesta.each do |ingest|
        output << "#{ingest}\n"
    end
    
    platos.each do |aux|
       output << "- #{aux[0]}, #{aux[1]}, #{aux[2]}g\n" 
    end
    
    porcentajes.each do |val| 
        output << "V.C.T. | %   #{val[0]} kcal | #{val[1]}% - #{val[2]}% - #{val[3]}%\n"
    end

    output
        
end





end

# CÓDIGO DE PRÁCTICAS ANTERIORES, GUARDADOS POR SI LAS MOSCAS
#//////////////////////////////////////////////////////////////
# class Dieta
#     include Comparable
#     #Se tiene acceso de lectura y escritura a todos los atributos
#     attr_accessor :descripcion, :titulo, :porcentaje, :porcion, :gramos, :vct, :p_proteina, :p_grasas, :p_hidratos
#     def initialize(descripcion, titulo, porcentaje, porcion, gramos, vct, p_proteina, p_grasas, p_hidratos)
#         @descripcion, @titulo, @porcentaje, @porcion, @gramos, @vct, @p_proteina, @p_grasas, @p_hidratos = descripcion, titulo, porcentaje, porcion, gramos, vct, p_proteina, p_grasas, p_hidratos
#     end
    
    
#     # Devuelve la referencia formateada del menú
#     # TITULO (rango %)
#     # -Descripcion del plato, porción recomendada de un plato, ingesta en gramos de un plato
#     # V.C.T. | % [valor] kcal | [porcentaje_proteina] % - [porcentaje_grasas] % -[porcentaje_hidratos] % 
#     def to_s
#         s = @titulo + " (" + @porcentaje + "%" + ")" + "\n"
#         i=0;
#         for i in 0..@descripcion.size-1
#             s += "- " + "#{@descripcion[i]}" + ": " + "#{@porcion[i]}" + ", " + "#{@gramos[i]}g\n"
#         end
        
#         s+= "V.C.T | %    " + @vct + "kcal | " + @p_proteina + "% - " + @p_grasas + "% - " + @p_hidratos + "%"
#         s
#     end
    
#     def get_descripcion
#         #Devuelve la descripcion del plato
#         i=0;
#         descrip= "#{@descripcion[i]}\n"
#         for i in 1..@descripcion.size-1
#           descrip += "#{@descripcion[i]}\n"
#         end
#         descrip
#     end
    
#     def get_titulo
#         # Devuelve el título del menú
#         "#{@titulo}"
#     end
    
#     def get_porcentaje
#         # Devuelve el porcentaje de la ingesta diaria
#         "(#{@porcentaje}%)"
#     end
    
#     def get_plato(i)
#         # Devuelve un plato
#         "- #{@descripcion[i]}" + ": " + "#{@porcion[i]}" + ", " + "#{@gramos[i]}g\n"
#     end
    
#     def get_cjto_platos
#         # Devuelve un conjuntos de platos
#         i=0;
#         platos = "#{get_plato(i)}"
#         for i in 1..@descripcion.size-1
#           platos += "#{get_plato(i)}"
#         end
#         platos
#     end
    
#     def get_vct
#         # Devuelve el vct
#         "V.C.T | %    " + "#{@vct}" + "kcal | "
#     end
    
#     def get_p_proteina
#         # Devuelve porcentaje de proteinas de un conjunto de platos
#         pro = @p_proteina + '%'
#         pro
        
#     end
    
#     def get_p_grasas
#         # Devuelve porcentaje de grasas de un conjunto de platos
#         g = @p_grasas + '%'
#         g
#     end
    
#     def get_p_hidratos
#         # Devuelve porcentaje de hidratos de carbono de un conjunto de platos
#         h = "#{@p_hidratos}" + '%'
#         h
#     end
#     def <=> (other)
#         @vct<=>other.vct
#     end
#     def ==(other)
#         if(@vct==other.vct && @p_proteina==other.p_proteina && @p_grasas==other.p_grasas && @p_hidratos==other.p_hidratos)
#             return true
#         else
#             return false
#         end
#     end
# end

# class Alimentos < Dieta
#     def initialize (descripcion, titulo, porcentaje, porcion, gramos, vct, p_proteina, p_grasas, p_hidratos, grupo)
#         super(descripcion, titulo, porcentaje, porcion, gramos, vct, p_proteina, p_grasas, p_hidratos)
#         @grupo = grupo
#     end
#     def to_s
#         dieta = "Dieta -> #{@grupo}\n"
#         dieta += super.to_s
#         "#{dieta}"
#     end
    
# end

# class Edad < Dieta
#     def initialize (descripcion, titulo, porcentaje, porcion, gramos, vct, p_proteina, p_grasas, p_hidratos, edad_from, edad_to)
#         super(descripcion, titulo, porcentaje, porcion, gramos, vct, p_proteina, p_grasas, p_hidratos)
#         @edad_from = edad_from
#         @edad_to = edad_to
#     end
#     def to_s
#         year = "Dieta -> De #{@edad_from}-#{@edad_to} años\n"
#         year += super.to_s
#         "#{year}"
#     end
# end