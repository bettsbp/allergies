require 'rspec'
require 'allergies'
require 'pry'

describe("Allergen#Calculate") do
  it("will return ['cats'] if we give a score of 128") do
    allergy_score = Allergen.new(128)
    expect(allergy_score.find_allergens).to(eq(['cats']))
  end
  it("will return ['cats', 'pollen'] if we give a score of 192") do
    allergy_score = Allergen.new(192)
    expect(allergy_score.find_allergens).to(eq(['cats','pollen']))
  end
  it("will return ['pollen'] if we give a score of 64") do
    allergy_score = Allergen.new(64)
    expect(allergy_score.find_allergens).to(eq(['pollen']))
  end
  it("will return ['pollen'] if we give a score of 64") do
    allergy_score = Allergen.new(256)
    expect(allergy_score.find_allergens).to(eq(false))
  end
end
