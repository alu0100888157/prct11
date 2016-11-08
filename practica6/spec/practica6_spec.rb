require "spec_helper"


describe List do
    diet = List.new()
    letras = ["a","b"]
    vector = [["Macarrones", "Spaguetti"], "Media mañana", "40-45", ["1 1/2 cucharón","2 cazo"], ["200", "100"], "356'7", "10", "20", "30"]
    diet.add_to_list(vector)
    vector2 = [["Langosta", "Bocadillo"], "Mañana", "30", ["3 cuchara", "2 tenedor"], ["100","50"], "350", "10", "20", "30"]
    diet.add_to_list(vector2)
    
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
      expect(letras).not_to be_nil
    end
    it "->Debe mostrar una dieta" do
      expect(diet.to_s(letras)).to eq("a) Media mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    356'7kcal | 10% - 20% - 30%b) Mañana (30%)\n- Langosta: 3 cuchara, 100g\n- Bocadillo: 2 tenedor, 50g\nV.C.T | %    350kcal | 10% - 20% - 30%")
    end
  end
end
