class Allergen
  def initialize(number_input)
    @allergen_score = number_input
    @scores_hash = {128=>"cats", 64=>"pollen", 32=>"chocolate", 16=>"tomatoes", 8=>"strawberries", 4=>"shellfish", 2=>"peanuts", 1=>"eggs"}
    @max_score = 255
    @allergy_score_values = [128, 64, 32, 16, 8, 4, 2, 1]
  end

  def find_allergens
    allergens = []
    if @allergen_score >= 255
      puts "TOO MANY ALLERGIES"
      return false
    end
    @allergy_score_values.each do |i|
      if @allergen_score >= i
        allergens.push(@scores_hash.fetch(i))
        @allergen_score -= i
      end
    end
    allergens
  end
end

print "Enter your allergy score: "
score = gets.chomp.to_i
new_score = Allergen.new(score)
print "You are allergic to: "
puts new_score.find_allergens
