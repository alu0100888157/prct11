
require "practica6/version"

class Dieta
    #Se tiene acceso de lectura y escritura a todos los atributos
    attr_accessor :descripcion, :titulo, :porcentaje, :porcion, :gramos, :vct, :p_proteina, :p_grasas, :p_hidratos
    #esto es el initilize
    def initialize(descripcion, titulo, porcentaje, porcion, gramos, vct, p_proteina, p_grasas, p_hidratos)
        @descripcion, @titulo, @porcentaje, @porcion, @gramos, @vct, @p_proteina, @p_grasas, @p_hidratos = descripcion, titulo, porcentaje, porcion, gramos, vct, p_proteina, p_grasas, p_hidratos
    end
    
    def get_titulo
        # Devuelve el título del menú
        "#{@titulo}"
    end
    
    def get_porcentaje
        # Devuelve el porcentaje de la ingesta diaria
        "(#{@porcentaje}%)"
    end
    
    def get_cjto_platos
        # Devuelve un conjuntos de platos
        i=0;
        platos = "#{get_plato(i)}"
        for i in 1..@descripcion.size-1
           platos += "#{get_plato(i)}"
        end
        platos
    end
    
    def get_descripcion
        #Devuelve la descripcion del plato
        i=0;
        descrip= "#{@descripcion[i]}\n"
        for i in 1..@descripcion.size-1
           descrip += "#{@descripcion[i]}\n"
        end
        descrip
    end
    
    def get_plato(i)
        # Devuelve un plato
        "- #{@descripcion[i]}" + ": " + "#{@porcion[i]}" + ", " + "#{@gramos[i]}g\n"
    end
    
    def get_vct
        # Devuelve el vct
        "V.C.T | %    " + "#{@vct}" + "kcal | "
    end
    
    def get_p_proteina
        # Devuelve porcentaje de proteinas de un conjunto de platos
        pro = @p_proteina + '%'
        pro
        
    end
    
    def get_p_grasas
        # Devuelve porcentaje de grasas de un conjunto de platos
        g = @p_grasas + '%'
        g
    end
    
    def get_p_hidratos
        # Devuelve porcentaje de hidratos de carbono de un conjunto de platos
        h = "#{@p_hidratos}" + '%'
        h
    end
end