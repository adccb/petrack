class PetsPresenter
  def initialize(pet)
    @pet = pet
  end

  def species
    case @pet.species.downcase
    when "cat"
      "🐈"
    when "dog"
      "🐕"
    end
  end
end
