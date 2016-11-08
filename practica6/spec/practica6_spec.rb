require "spec_helper"


describe List do
    #diet = List.new()
    context "Pruebas de la parte lista" do 
    it "has a version number" do
      expect(Practica6::VERSION).not_to be nil
    end
    it "->Debe existir un objeto y estar inicializado." do
      expect(diet).not_to be_nil
    end
  end
end
