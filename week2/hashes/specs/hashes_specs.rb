require('minitest/autorun')
require('minitest/rg')
require_relative('../pda.rb')

class TestPetShop < Minitest::Test

  def setup
    @pet_shop = {
      pets: [
        {
          name: "Sir Percy",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        },
        {
          name: "King Bagdemagus",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        }

      ],
      admin: {
        total_cash: 1000,
        pets_sold: 0,
      },
      name: "Camelot of Pets"
    }
  end

      def test_all_pets_by_breed__found
        pets = pets_by_breed(@pet_shop, "British Shorthair")
        assert_equal(2, pets.count)
      end

      def test_all_pets_by_breed__not_found
        pets = pets_by_breed(@pet_shop, "Dalmation")
        assert_equal(0, pets.count)
      end

    end
