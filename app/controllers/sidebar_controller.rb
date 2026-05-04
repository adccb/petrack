class SidebarController < ApplicationController
  def index
    @items = [
      {
        text: "Home",
        url: root_path
      },
      {
        text: "Pets",
        url: pets_path,
        items: Current.user.pets.map { item_for_pet it }
      }
    ]
  end

  private

  def item_for_pet(pet)
    { text: pet.name, url: pet_path(pet) }
  end
end
