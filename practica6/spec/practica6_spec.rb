require "spec_helper"
require "./lib/practica6/dieta"

describe Dieta do
  @descripcion = ["Macarrones", "Spaguetti"]
  @titulo = "Media mañana"
  @porcentaje = "40-45"
  @porcion = ["1 1/2 cucharón","2 cazo"]
  @gramos = ["200", "100"]
  @vct = "356'7"
  @p_proteina = "10"
  @p_grasas = "20"
  @p_hidratos = "30"
  
  diet = Dieta.new(@descripcion, @titulo, @porcentaje, @porcion, @gramos, @vct, @p_proteina, @p_grasas, @p_hidratos)
  
  it "has a version number" do
    expect(Practica6::VERSION).not_to be nil
  end
  it "->Debe existir un objeto y estar inicializado." do
      expect(diet).not_to be_nil
    end
    it "->Probando titulo" do
      expect(diet.get_titulo()).to eq("Media mañana")
    end
  it "->Probando porcentaje" do
      expect(diet.get_porcentaje()).to eq("(40-45%)")
    end
end
