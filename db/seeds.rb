Book.delete_all
Recipe.delete_all
Ingredient.delete_all



b1= Book.create(:title => 'Primal Blueprint Cookbook: Primal Low Carb, Paleo, Grain-Free, Dairy-Free, Gluten-Free', :cuisine => 'primal', :chef => 'Mark Sisson', :image => 'http://luxuryreading.com/wp-content/uploads/2010/11/The-Primal-Blueprint-Cookbook.jpg')

r1= Recipe.create(:name => 'Steak with Creamed Spinach', :course => 'dinner' , :cooktime => '35 minutes', :servingsize => '3', :instructions => 'Preheat oven to 450 F (232 C). Take the frozen spinach out of the freezer and the meat and salmon out of the refrigerator. Slice the beef very thinly into 1 to 2 inch long (25 to 50 cm) slices. Lightly season with salt and pepper. Cook the meat, stirring only once or twice, until its cooked through to medium-rare, about 3 minutes.', :image => 'http://i247.photobucket.com/albums/gg158/MDA2008/MDA%202011/CreamedSpinach.jpg' )
r2= Recipe.create(:name => 'Steak Salad', :course => 'lunch entree' , :cooktime => '35 minutes', :servingsize => '1', :instructions => 'Place beef slices and 1/2 of red peppers over mixed greens. Lightly season the salad with a few pinches of cumin and chili powder. Right before eating add 1/2 of a sliced avocado to each salad and lime dressing.', :image => 'http://1.bp.blogspot.com/-soTiUUfKHCw/TlL-gxSfmiI/AAAAAAAADxI/347tsem2xJ8/s1600/DSC03205.JPG')
r3= Recipe.create(:name => 'Salmon Fritatta', :course => 'dinner' , :cooktime => '35 minutes', :servingsize => '2', :instructions => 'Lightly season the salmon with salt and pepper. Place in a rimmed baking pan with the red pepper and bake for 12 minutes.
When the salmon comes out, turn the oven off and turn the broiler on.
Use a fork to flake two of the salmon fillets into small pieces.
To the eggs add a pinch of salt, pepper and dried dill.
Heat olive oil in a 10-inch skillet (25 cm) over high heat.
Add the frozen spinach and saute for 3 to 5 minutes (there should be very little or no liquid in the pan).
Add the flaked salmon. Stir well then pour in the eggs and stir once to evenly spread the egg around.
While the eggs begin to set, place the red pepper slices on top. Put the skillet in the oven. Cook the frittata under the broiler for 3 to 5 minutes until the egg sets and is firm.', :image => 'http://i247.photobucket.com/albums/gg158/MDA2008/MDA%202011/Frittata.jpg')


i1= Ingredient.create(:name => 'boneless beef' , :measurement => '8 ounces' , :cost => '10.00' , :image => 'http://www.deliciousgourmetsteaksco.com/2959168507_3187c77c8b.jpg' )
i2= Ingredient.create(:name => 'bell pepper' , :measurement => '1' , :cost => '50 cents' , :image => 'http://www.bigoven.com/uploads/YellowBellPepper.jpg' )
i3= Ingredient.create(:name => 'salad greens' , :measurement => '4 to 6 ounces' , :cost => '3.00' , :image => 'http://www.ctfarmfreshstore.com/mm5/graphics/00000001/mixed-salad-greens.jpg' )
i4= Ingredient.create(:name => 'lime' , :measurement => '1' , :cost => '.75' , :image => 'http://2.bp.blogspot.com/_pCeJDMDRut4/TOxrx7ewXqI/AAAAAAAAAL4/JRnVMeLHv8A/s1600/42654455-1lime.jpg' )
i5= Ingredient.create(:name => 'salmon filet' , :measurement => '2 (4-6 ounces)' , :cost => '9.00' , :image => 'http://www.cookstr.com/photos/recipes/1590/medium/recipe-1590.jpg?1297064531' )
i6= Ingredient.create(:name => 'olive oil' , :measurement => '2 tablespoons' , :cost => '2.00' , :image => 'http://3.bp.blogspot.com/_vhFh-n7pCbU/TEjmZwWRo5I/AAAAAAAAFZw/ZrnYpVyBT2g/s1600/Olive-Oil.jpg' )


b1.recipes = [r1,r2]

b1.recipes << r3
#assignment. recipes property has these objects in an array


r1.ingredients = [i1, i2]

r2.ingredients = [i2, i3, i6]

r3.ingredients= [i3, i4, i5, i6]
