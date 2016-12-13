require "spec_helper"

describe MenuDiet do
  
  almuerzo = MenuDiet.new("Ejemplo") do
    met_titulo  "Almuerzo"
    met_ingesta  :min => 30, :max => 35
    plato   :descripcion => "Macarrones con salsa de tomate y queso parmesano",
            :porcion => "1 1/2 cucharón",
            :gramos => 200
    plato   :descripcion => "Escalope de ternera",
            :porcion => "1 bistec mediano",
            :gramos => 100
    plato   :descripcion => "Ensalada básica con zanahoria rallada",
            :porcion => "guarnición",
            :gramos => 120
    plato   :descripcion => "Mandarina", :porcion => "1 grande", :gramos => 180
    plato   :descripcion => "Pan de trigo integral", :porcion => "1 rodaja", :gramos => 20
    porcent :vct => 785.9, :proteinas => 19, :grasas => 34, :hidratos => 47
  end
  context "Prueba de las partes fundamentales de la clase Dieta:" do
    
    it "-> El proyecto debe tener un numero de version" do
        expect(Practica6::VERSION).not_to be nil
    end
    it "-> Almuerzo no nil" do
        expect(almuerzo).not_to be_nil
    end
    it "-> Existe name" do
        expect(almuerzo.name).not_to be_nil
    end
    it "-> Existe título como Almuerzo" do
        expect(almuerzo.titulo).to eq("Almuerzo")
    end
    it "-> Existe ingesta" do
        expect(almuerzo.ingesta).to eq([[30, 35]])
    end
    it "-> Dieta Platos" do
        expect(almuerzo.platos).to eq([["Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharón","200"],["Escalope de ternera","1 bistec mediano","100"],["Ensalada básica con zanahoria rallada","guarnición","120"],["Mandarina","1 grande","180"],["Pan de trigo integral","1 rodaja","20"]])
    end
    it "-> Dieta Almuerzo" do
        expect(almuerzo.to_s).to eq("Ejemplo\n=======\n\nAlmuerzo [30, 35]\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200g\n- Escalope de ternera, 1 bistec mediano, 100g\n- Ensalada básica con zanahoria rallada, guarnición, 120g\n- Mandarina, 1 grande, 180g\n- Pan de trigo integral, 1 rodaja, 20g\nV.C.T. | %   785.9 kcal | 19% - 34% - 47%\n")
    end 
  end

end
describe List do
  
  before :each do
    @desayuno_L = MenuDiet.new("Ejemplo") do
      met_titulo  "Desayuno"
      met_ingesta  :max => 15
      plato   :descripcion => "Leche con tostadas",
              :porcion => " 1 vaso",
              :gramos => 200 
      plato   :descripcion => "Cacao instantaneo",
              :porcion => "1 c/sopera",
              :gramos => 10
      plato   :descripcion => "Medio bocadillo de jamón y queso",
              :porcion => "Mitad de barra",
              :gramos => 200
      plato   :descripcion => "Almendras laminadas", :porcion => "(10 unidades) 2 c/soperas", :gramos => 10
      porcent :vct => 288.0, :proteinas => 48, :grasas => 49, :hidratos => 34
    end
    @almuerzo_L = MenuDiet.new("Ejemplo") do
      met_titulo  "Almuerzo"
      met_ingesta  :min => 30, :max => 35
      plato   :descripcion => "Macarrones con salsa de tomate y queso parmesano",
              :porcion => "1 1/2 cucharón",
              :gramos => 200
      plato   :descripcion => "Escalope de ternera",
              :porcion => "1 bistec mediano",
              :gramos => 100
      plato   :descripcion => "Ensalada básica con zanahoria rallada",
              :porcion => "guarnición",
              :gramos => 120
      plato   :descripcion => "Mandarina", :porcion => "1 grande", :gramos => 180
      plato   :descripcion => "Pan de trigo integral", :porcion => "1 rodaja", :gramos => 20
      porcent :vct => 785.9, :proteinas => 19, :grasas => 34, :hidratos => 47
    end
    @cena_L = MenuDiet.new("Ejemplo") do
      met_titulo  "Cena"
      met_ingesta  :min => 15, :max => 20
      plato   :descripcion => "Pizza 4 quesos",
              :porcion => "1 pizza",
              :gramos => 300
      plato   :descripcion => "Yogur de coco",
              :porcion => "1 vasito",
              :gramos => 125
      plato   :descripcion => "Mandarina", :porcion => "1 grande", :gramos => 180
      porcent :vct => 489.9, :proteinas => 15, :grasas => 29, :hidratos => 63
    end
    @desayuno_M = MenuDiet.new("Ejemplo") do
      met_titulo  "Desayuno"
      met_ingesta  :max => 15
      plato   :descripcion => "Leche con tostadas",
              :porcion => "1 1/2 cucharón",
              :gramos => 200
      plato   :descripcion => "Cereales Integrales",
              :porcion => "Dos puñados",
              :gramos => 60
      plato   :descripcion => "Pan de trigo integral con mantequilla", :porcion => "1 rodaja", :gramos => 20
      porcent :vct => 354.9, :proteinas => 16, :grasas => 23, :hidratos => 30
    end  
    @almuerzo_M = MenuDiet.new("Ejemplo") do
      met_titulo  "Almuerzo"
      met_ingesta  :min => 30, :max => 35
      plato   :descripcion => "Salmón con queso parmesano",
              :porcion => "3 rodajas",
              :gramos => 150
      plato   :descripcion => "Salteado de verduras",
              :porcion => "Medio plato",
              :gramos => 100
      plato   :descripcion => "Revuelto de champiñones y gambas",
              :porcion => "Un plato pequeño",
              :gramos => 150
      plato   :descripcion => "Manzana", :porcion => "1 grande", :gramos => 180
      porcent :vct => 455.9, :proteinas => 12, :grasas => 28, :hidratos => 65
    end
    @cena_M = MenuDiet.new("Ejemplo") do
      met_titulo  "Cena"
      met_ingesta  :min => 15, :max => 20
      plato   :descripcion => "Sandwich tropical",
              :porcion => "1 sandwich",
              :gramos => 250
      plato   :descripcion => "Yogur de fresa",
              :porcion => "1 vasito",
              :gramos => 125
      plato   :descripcion => "Pera", :porcion => "1 grande", :gramos => 180
      porcent :vct => 420.4, :proteinas => 16, :grasas => 32, :hidratos => 52
    end
    @lunes = List.new()
    @lunes.add(@desayuno_L)
    @lunes.add(@almuerzo_L)
    @lunes.add(@cena_L)
    @martes = List.new()
    @martes.add(@desayuno_M)
    @martes.add(@almuerzo_M)
    @martes.add(@cena_M)
    @lista_Semanal = List.new()
    @lista_Semanal.add(@lunes)
    @lista_Semanal.add(@martes)
  end
  it "-> La lista no está vacia" do
    expect(List.new()).not_to be nil
  end
  it "-> Desayuno del lunes no nil" do
    expect(@desayuno_L).not_to be_nil
  end
  it "-> Almuerzo del lunes no nil" do
    expect(@almuerzo_L).not_to be_nil
  end
  it "-> Cena del lunes no nil" do
    expect(@cena_L).not_to be_nil
  end
  it "-> Debe existir @lunes y estar inicializado." do
    expect(@lunes).not_to be_nil
  end
  it "-> Comprobar si el head de @lunes está vacío " do
    expect(@lunes.head.value).not_to be_nil
  end
  it "->Comprobar si esta vacío" do
    expect(@lunes.empty?).to eq(false)
  end
  it "-> Desayuno del martes no nil" do
    expect(@desayuno_M).not_to be_nil
  end
  it "-> Almuerzo del martes no nil" do
    expect(@almuerzo_M).not_to be_nil
  end
  it "-> Cena del martes no nil" do
    expect(@cena_M).not_to be_nil
  end
  it "-> Debe existir @martes y estar inicializado." do
    expect(@martes).not_to be_nil
  end
  it "-> Comprobar si el head de @martes está vacío " do
    expect(@martes.head.value).not_to be_nil
  end
  it "->Comprobar si esta vacío" do
    expect(@martes.empty?).to eq(false)
  end
  it "-> Dieta Lunes" do
    expect(@lunes.to_s).to eq("Ejemplo\n=======\n\nDesayuno [15]\n- Leche con tostadas,  1 vaso, 200g\n- Cacao instantaneo, 1 c/sopera, 10g\n- Medio bocadillo de jamón y queso, Mitad de barra, 200g\n- Almendras laminadas, (10 unidades) 2 c/soperas, 10g\nV.C.T. | %   288.0 kcal | 48% - 49% - 34%\nEjemplo\n=======\n\nAlmuerzo [30, 35]\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200g\n- Escalope de ternera, 1 bistec mediano, 100g\n- Ensalada básica con zanahoria rallada, guarnición, 120g\n- Mandarina, 1 grande, 180g\n- Pan de trigo integral, 1 rodaja, 20g\nV.C.T. | %   785.9 kcal | 19% - 34% - 47%\nEjemplo\n=======\n\nCena [15, 20]\n- Pizza 4 quesos, 1 pizza, 300g\n- Yogur de coco, 1 vasito, 125g\n- Mandarina, 1 grande, 180g\nV.C.T. | %   489.9 kcal | 15% - 29% - 63%\n")
  end 
  it "-> Dieta Martes" do
    expect(@martes.to_s).to eq("Ejemplo\n=======\n\nDesayuno [15]\n- Leche con tostadas, 1 1/2 cucharón, 200g\n- Cereales Integrales, Dos puñados, 60g\n- Pan de trigo integral con mantequilla, 1 rodaja, 20g\nV.C.T. | %   354.9 kcal | 16% - 23% - 30%\nEjemplo\n=======\n\nAlmuerzo [30, 35]\n- Salmón con queso parmesano, 3 rodajas, 150g\n- Salteado de verduras, Medio plato, 100g\n- Revuelto de champiñones y gambas, Un plato pequeño, 150g\n- Manzana, 1 grande, 180g\nV.C.T. | %   455.9 kcal | 12% - 28% - 65%\nEjemplo\n=======\n\nCena [15, 20]\n- Sandwich tropical, 1 sandwich, 250g\n- Yogur de fresa, 1 vasito, 125g\n- Pera, 1 grande, 180g\nV.C.T. | %   420.4 kcal | 16% - 32% - 52%\n")
  end 
  it "-> Dieta semanal" do
    expect(@lista_Semanal.to_s).to eq("Ejemplo\n=======\n\nDesayuno [15]\n- Leche con tostadas,  1 vaso, 200g\n- Cacao instantaneo, 1 c/sopera, 10g\n- Medio bocadillo de jamón y queso, Mitad de barra, 200g\n- Almendras laminadas, (10 unidades) 2 c/soperas, 10g\nV.C.T. | %   288.0 kcal | 48% - 49% - 34%\nEjemplo\n=======\n\nAlmuerzo [30, 35]\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200g\n- Escalope de ternera, 1 bistec mediano, 100g\n- Ensalada básica con zanahoria rallada, guarnición, 120g\n- Mandarina, 1 grande, 180g\n- Pan de trigo integral, 1 rodaja, 20g\nV.C.T. | %   785.9 kcal | 19% - 34% - 47%\nEjemplo\n=======\n\nCena [15, 20]\n- Pizza 4 quesos, 1 pizza, 300g\n- Yogur de coco, 1 vasito, 125g\n- Mandarina, 1 grande, 180g\nV.C.T. | %   489.9 kcal | 15% - 29% - 63%\nEjemplo\n=======\n\nDesayuno [15]\n- Leche con tostadas, 1 1/2 cucharón, 200g\n- Cereales Integrales, Dos puñados, 60g\n- Pan de trigo integral con mantequilla, 1 rodaja, 20g\nV.C.T. | %   354.9 kcal | 16% - 23% - 30%\nEjemplo\n=======\n\nAlmuerzo [30, 35]\n- Salmón con queso parmesano, 3 rodajas, 150g\n- Salteado de verduras, Medio plato, 100g\n- Revuelto de champiñones y gambas, Un plato pequeño, 150g\n- Manzana, 1 grande, 180g\nV.C.T. | %   455.9 kcal | 12% - 28% - 65%\nEjemplo\n=======\n\nCena [15, 20]\n- Sandwich tropical, 1 sandwich, 250g\n- Yogur de fresa, 1 vasito, 125g\n- Pera, 1 grande, 180g\nV.C.T. | %   420.4 kcal | 16% - 32% - 52%\n")
  end
end














#PRUEBAS DE PRÁCTICAS ANTERIORES 
#/////////////////////////////////////////
# describe Dieta do
#   #before :all do
#   @descripcion = ["Macarrones", "Spaguetti"]
#   @titulo = "Media mañana"
#   @porcentaje = "40-45"
#   @porcion = ["1 1/2 cucharón","2 cazo"]
#   @gramos = ["200", "100"]
#   @vct = "356'7"
#   @p_proteina = "10"
#   @p_grasas = "20"
#   @p_hidratos = "30"
  
#     diet = Dieta.new(@descripcion, @titulo, @porcentaje, @porcion, @gramos, @vct, @p_proteina, @p_grasas, @p_hidratos)
#     ####################################################
#     @descripcion = ["Macarrones", "Spaguetti"]
#   @titulo = "Media mañana"
#   @porcentaje = "40-45"
#   @porcion = ["1 1/2 cucharón","2 cazo"]
#   @gramos = ["200", "100"]
#   @vct = "350"
#   @p_proteina = "10"
#   @p_grasas = "20"
#   @p_hidratos = "30"
  
#     diet2 = Dieta.new(@descripcion, @titulo, @porcentaje, @porcion, @gramos, @vct, @p_proteina, @p_grasas, @p_hidratos)
    
#     ##################################################
#     @descripcion = ["Macarrones", "Spaguetti"]
#   @titulo = "Media mañana"
#   @porcentaje = "40-45"
#   @porcion = ["1 1/2 cucharón","2 cazo"]
#   @gramos = ["200", "100"]
#   @vct = "356'7"
#   @p_proteina = "10"
#   @p_grasas = "20"
#   @p_hidratos = "33"
  
#     diet3 = Dieta.new(@descripcion, @titulo, @porcentaje, @porcion, @gramos, @vct, @p_proteina, @p_grasas, @p_hidratos)
#     context "Pruebas de la parte dieta" do 
#     it "has a version number" do
#       expect(Practica6::VERSION).not_to be nil
#     end
#     it "->Debe existir un objeto y estar inicializado." do
#       expect(diet).not_to be_nil
#     end
#     it "->Probando descripcion" do
#       expect(diet.get_descripcion()).to eq("Macarrones\nSpaguetti\n")
    
#     end
#     it "->Probando porcentaje" do
#       expect(diet.get_porcentaje()).to eq("(40-45%)")
#     end
#     it "->Probando titulo" do
#       expect(diet.get_titulo()).to eq("Media mañana")
#     end
#     it "->Probando conjunto de platos" do
#       expect(diet.get_cjto_platos()).to eq("- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\n")
#     end
#     it "->Probando VCT" do
#       expect(diet.get_vct()).to eq("V.C.T | %    356'7kcal | ")
#     end
#     it "->Probando proteina" do
#       expect(diet.get_p_proteina()).to eq("10%")
#     end
    
#     it "->Probando grasas" do
#       expect(diet.get_p_grasas()).to eq("20%")
#     end
    
#     it "->Probando hidratos" do
#       expect(diet.get_p_hidratos()).to eq("30%")
#     end
#     it "-> Probando to_s" do
#       expect(diet.to_s()).to eq("Media mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    356'7kcal | 10% - 20% - 30%")
#     end
#     it "vct diet > vct diet2" do
#       expect(diet > diet2).to eq(true)
#     end
#     it "vct diet !< diet2" do
#       expect(diet < diet2).to eq(false)
#     end
#     it "vct diet !<= diet2" do
#       expect(diet <= diet2).to eq(false)
#     end
#     it "vct diet >= vct diet2" do
#       expect(diet >= diet2).to eq(true)
#     end
#     it "vct diet == vct diet3" do
#       expect(diet == diet3).to eq(false)
#     end
#   end
# end

# describe List do
#     diet = List.new()
#     letras = ["a","b", "c", "d"]
#     vector = [["Macarrones", "Spaguetti"], "Media mañana", "40-45", ["1 1/2 cucharón","2 cazo"], ["200", "100"], "356.7", "10", "20", "30"]
#     diet.add_to_list(vector)
#     vector2 = [["Langosta", "Bocadillo"], "Mañana", "30", ["3 cuchara", "2 tenedor"], ["100","50"], "350", "10", "20", "30"]
#     vector3 = [["Macarrones", "Spaguetti"], "Media mañana", "40-45", ["1 1/2 cucharón","2 cazo"], ["200", "100"], "355", "10", "20", "30", "Verdura"]
#     vector4 = [["Macarrones", "Spaguetti"], "Media mañana", "40-45", ["1 1/2 cucharón","2 cazo"], ["200", "100"], "354", "10", "20", "30", "8", "10"]
#     diet.add_to_list(vector2)
#     diet.add_to_list(vector3)
#     diet.add_to_list(vector4)
    
#     context "Pruebas de la parte lista" do 
#       it "has a version number" do
#         expect(Practica6::VERSION).not_to be nil
#       end
#       it "->Debe existir un objeto y estar inicializado." do
#         expect(diet).not_to be_nil
#       end
#       it "->Debe existir un objeto y estar inicializado." do
#         expect(vector).not_to be_nil
#       end
#       it "->Debe existir un objeto y estar inicializado." do
#         expect(vector2).not_to be_nil
#       end
#       it "->Debe existir un objeto y estar inicializado." do
#       expect(vector3).not_to be_nil
#       end
#       it "->Debe existir un objeto y estar inicializado." do
#       expect(vector4).not_to be_nil
#       end
#       it "->Debe existir un objeto y estar inicializado." do
#         expect(letras).not_to be_nil
#       end
#       it "->Debe mostrar una dieta" do
#       expect(diet.to_s(letras)).to eq("a) Media mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    356.7kcal | 10% - 20% - 30%b) Mañana (30%)\n- Langosta: 3 cuchara, 100g\n- Bocadillo: 2 tenedor, 50g\nV.C.T | %    350kcal | 10% - 20% - 30%c) Dieta -> Verdura\nMedia mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    355kcal | 10% - 20% - 30%d) Dieta -> De 8-10 años\nMedia mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    354kcal | 10% - 20% - 30%")
#       end
#       it "-> Hallar min" do
#         expect(diet.min).to eq("350")
#       end
#       it "-> Hallar max" do
#         expect(diet.max).to eq("356.7")
#       end
#       it "-> ordenar los vct de menos a mayor" do
#         expect(diet.sort).to eq(["350", "354", "355", "356.7"])
#       end
#       # it "->Debe extraer por el final" do
#       #   diet.extract_end()
#       #   expect(diet.to_s(letras)).to eq("a) Media mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    356'7kcal | 10% - 20% - 30%b) Mañana (30%)\n- Langosta: 3 cuchara, 100g\n- Bocadillo: 2 tenedor, 50g\nV.C.T | %    350kcal | 10% - 20% - 30%c) Dieta -> Verdura\nMedia mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    356'7kcal | 10% - 20% - 30%d")
#       # end
#     end
# end

# describe Alimentos do
#   @descripcion = ["Macarrones", "Spaguetti"]
#   @titulo = "Media mañana"
#   @porcentaje = "40-45"
#   @porcion = ["1 1/2 cucharón","2 cazo"]
#   @gramos = ["200", "100"]
#   @vct = "356'7"
#   @p_proteina = "10"
#   @p_grasas = "20"
#   @p_hidratos = "30"
# @grupo = "Verdura"
#   food = Alimentos.new(@descripcion, @titulo, @porcentaje, @porcion, @gramos, @vct, @p_proteina, @p_grasas, @p_hidratos, @grupo)
#   context "Pruebas para la parte Alimentos" do
#     it "has a version number" do
#         expect(Practica6::VERSION).not_to be nil
#     end
#     it "->Debe existir un objeto y estar inicializado." do
#       expect(food).not_to be_nil
#     end
#     it "->Compruebo que food pertenece a Object" do
#       expect(food.is_a?Object).to eq(true)
#     end
#     it "->Compruebo que food pertenece a BasicObject" do
#       expect(food.is_a?BasicObject).to eq(true)
#     end
#     it "->Compruebo que food es una instancia de Object" do
#       expect(food.instance_of?Object).to eq(false)
#     end
#     it "->Compruebo que food es una instancia de Alimento" do
#       expect(food.instance_of?Alimentos).to eq(true)
#     end
#     it "->Compruebo que Alimento es un hijo de Dieta" do
#       expect(Alimentos.superclass).to eq(Dieta)
#     end
#     it "->Debe mostrar un grupo" do
#       expect(food.to_s).to eq("Dieta -> Verdura\nMedia mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    356'7kcal | 10% - 20% - 30%")
#     end
#     it "-> Debe existir el método to_s" do
#       expect(food).to respond_to(:to_s)
#     end
#   end
#   describe Edad do
#   @descripcion = ["Macarrones", "Spaguetti"]
#   @titulo = "Media mañana"
#   @porcentaje = "40-45"
#   @porcion = ["1 1/2 cucharón","2 cazo"]
#   @gramos = ["200", "100"]
#   @vct = "356'7"
#   @p_proteina = "10"
#   @p_grasas = "20"
#   @p_hidratos = "30"
#   @edad_from = "8"
#   @edad_to = "10"
#   year = Edad.new(@descripcion, @titulo, @porcentaje, @porcion, @gramos, @vct, @p_proteina, @p_grasas, @p_hidratos,@edad_from, @edad_to)
#     context "Pruebas de la parte Edad" do
#       it "has a version number" do
#         expect(Practica6::VERSION).not_to be nil
#       end
#       it "->Debe existir un objeto y estar inicializado." do
#         expect(year).not_to be_nil
#       end
#       it "->Compruebo que year pertenece a Object" do
#       expect(year.is_a?Object).to eq(true)
#       end
#       it "->Compruebo que year pertenece a BasicObject" do
#       expect(year.is_a?BasicObject).to eq(true)
#       end
#       it "->Compruebo que year es una instancia de Object" do
#       expect(year.instance_of?Object).to eq(false)
#       end
#       it "->Compruebo que year es una instancia de Edad" do
#       expect(year.instance_of?Edad).to eq(true)
#       end
#       it "->Compruebo que Edad es un hijo de Dieta" do
#       expect(Edad.superclass).to eq(Dieta)
#       end
#       it "->Debe mostrar un grupo" do
#       expect(year.to_s).to eq("Dieta -> De 8-10 años\nMedia mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    356'7kcal | 10% - 20% - 30%")
#       end
#       it "-> Debe existir el método to_s" do
#       expect(year).to respond_to(:to_s)
#     end
#     end
#   end
# end
