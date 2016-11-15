require "spec_helper"


describe List do
    diet = List.new()
    letras = ["a","b"]
    vector = [["Macarrones", "Spaguetti"], "Media mañana", "40-45", ["1 1/2 cucharón","2 cazo"], ["200", "100"], "356'7", "10", "20", "30"]
    diet.add_to_list(vector)
    vector2 = [["Langosta", "Bocadillo"], "Mañana", "30", ["3 cuchara", "2 tenedor"], ["100","50"], "350", "10", "20", "30"]
    vector3 = [["Macarrones", "Spaguetti"], "Media mañana", "40-45", ["1 1/2 cucharón","2 cazo"], ["200", "100"], "356'7", "10", "20", "30", "Verdura"]
    vector4 = [["Macarrones", "Spaguetti"], "Media mañana", "40-45", ["1 1/2 cucharón","2 cazo"], ["200", "100"], "356'7", "10", "20", "30", "8", "10"]
    diet.add_to_list(vector2)
    diet.add_to_list(vector3)
    diet.add_to_list(vector4)
    
    context "Pruebas de la parte lista" do 
      it "has a version number" do
        expect(Practica6::VERSION).not_to be nil
      end
      it "->Debe existir un objeto y estar inicializado." do
        expect(diet).not_to be_nil
      end
      it "->Debe existir un objeto y estar inicializado." do
        expect(vector).not_to be_nil
      end
      it "->Debe existir un objeto y estar inicializado." do
        expect(vector2).not_to be_nil
      end
      it "->Debe existir un objeto y estar inicializado." do
      expect(vector3).not_to be_nil
      end
      it "->Debe existir un objeto y estar inicializado." do
      expect(vector4).not_to be_nil
      end
      it "->Debe existir un objeto y estar inicializado." do
        expect(letras).not_to be_nil
      end
      it "->Debe mostrar una dieta" do
        expect(diet.to_s(letras)).to eq("a) Media mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    356'7kcal | 10% - 20% - 30%b) Mañana (30%)\n- Langosta: 3 cuchara, 100g\n- Bocadillo: 2 tenedor, 50g\nV.C.T | %    350kcal | 10% - 20% - 30%")
      end
    end
end

describe Alimentos do
  @descripcion = ["Macarrones", "Spaguetti"]
  @titulo = "Media mañana"
  @porcentaje = "40-45"
  @porcion = ["1 1/2 cucharón","2 cazo"]
  @gramos = ["200", "100"]
  @vct = "356'7"
  @p_proteina = "10"
  @p_grasas = "20"
  @p_hidratos = "30"
 @grupo = "Verdura"
  food = Alimentos.new(@descripcion, @titulo, @porcentaje, @porcion, @gramos, @vct, @p_proteina, @p_grasas, @p_hidratos, @grupo)
  context "Pruebas para la parte Alimentos" do
    it "has a version number" do
        expect(Practica6::VERSION).not_to be nil
    end
    it "->Debe existir un objeto y estar inicializado." do
      expect(food).not_to be_nil
    end
    it "->Compruebo que food pertenece a Object" do
      expect(food.is_a?Object).to eq(true)
    end
    it "->Compruebo que food pertenece a BasicObject" do
      expect(food.is_a?BasicObject).to eq(true)
    end
    it "->Compruebo que food es una instancia de Object" do
      expect(food.instance_of?Object).to eq(false)
    end
    it "->Compruebo que food es una instancia de Alimento" do
      expect(food.instance_of?Alimentos).to eq(true)
    end
     it "->Compruebo que Alimento es un hijo de Dieta" do
      expect(Alimentos.superclass).to eq(Dieta)
    end
    it "->Debe mostrar un grupo" do
      expect(food.to_s).to eq("Dieta -> Verdura\nMedia mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    356'7kcal | 10% - 20% - 30%")
    end
  end
  describe Edad do
  @descripcion = ["Macarrones", "Spaguetti"]
  @titulo = "Media mañana"
  @porcentaje = "40-45"
  @porcion = ["1 1/2 cucharón","2 cazo"]
  @gramos = ["200", "100"]
  @vct = "356'7"
  @p_proteina = "10"
  @p_grasas = "20"
  @p_hidratos = "30"
  @edad_from = "8"
  @edad_to = "10"
  year = Edad.new(@descripcion, @titulo, @porcentaje, @porcion, @gramos, @vct, @p_proteina, @p_grasas, @p_hidratos,@edad_from, @edad_to)
    context "Pruebas de la parte Edad" do
      it "has a version number" do
        expect(Practica6::VERSION).not_to be nil
      end
      it "->Debe existir un objeto y estar inicializado." do
        expect(year).not_to be_nil
      end
       it "->Compruebo que year pertenece a Object" do
      expect(year.is_a?Object).to eq(true)
      end
      it "->Compruebo que year pertenece a BasicObject" do
      expect(year.is_a?BasicObject).to eq(true)
      end
      it "->Compruebo que year es una instancia de Object" do
      expect(year.instance_of?Object).to eq(false)
      end
      it "->Compruebo que year es una instancia de Edad" do
      expect(year.instance_of?Edad).to eq(true)
      end
      it "->Compruebo que Edad es un hijo de Dieta" do
      expect(Edad.superclass).to eq(Dieta)
      end
      it "->Debe mostrar un grupo" do
      expect(year.to_s).to eq("Dieta -> De 8-10 años\nMedia mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    356'7kcal | 10% - 20% - 30%")
      end
    end
  end
end
