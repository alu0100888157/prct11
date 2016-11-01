
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
end