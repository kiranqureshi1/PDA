def pets_by_breed(pet_shop, breed)
  total = []
   for pets in pet_shop[:pets]
     if pets[:breed] == breed

       total << pets[:breed]
     end
   end
   return total
end
# pet_shop is a hash, which has three keys:
# 1) pets with a value of an array (each object inside an array is again a hash with keys name, pet_type, breed and price.)
# 2)admin with a value of a hash (which has keys total_cash and pets_sold with both values in integers)
# 3) name with a value (name of the pet_shop which is a string)
#
# the tests are looking for if pet_shop has pets with breed  "British Shorthair" and "Dalmation". The method going in a loop over a value  of pets( which is an array) to find the breed of the pet in the pet_shop. Total in an empty array in the start of the method and if the breed (which is  "British Shorthair" and "Dalmation" in the case) matches the one provided in the hashes of an array value of pets in pet_shop. Then add it to the Total and the test has a .count method on the method pets_by_breed method that in this case returns 2 as both pets are from the same breed ( "British Shorthair") and none from ("Dalmation" in this case)
