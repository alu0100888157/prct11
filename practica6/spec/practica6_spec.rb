require "spec_helper"


describe List do
    diet = List.new()
    vector = [["Macarrones", "Spaguetti"], "Media mañana", "40-45", ["1 1/2 cucharón","2 cazo"], ["200", "100"], "356'7", "10", "20", "30"]
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
    it "->Debe mostrar una dieta" do
      expect(diet.to_s).to eq("Media mañana (40-45%)\n- Macarrones: 1 1/2 cucharón, 200g\n- Spaguetti: 2 cazo, 100g\nV.C.T | %    356'7kcal | 10% - 20% - 30%)
    end
  end
end
