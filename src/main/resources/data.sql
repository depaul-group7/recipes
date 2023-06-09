-- username: user1, password: user1p
INSERT INTO "user"(id,username,password) VALUES(9998,'user1','$2a$10$QukOBBbOAnOm/JNg6Lh0QuVreRjLblQXxyHRgJ5m8D5b8VhqZnH26');
--INSERT INTO "roles" VALUES(9999, 'ROLE_ADMIN');
INSERT INTO "roles" VALUES(9998, 'ROLE_USER');

-- username: admin, password: admin
INSERT INTO "user"(id,username,password) VALUES(9999,'admin','$2a$10$mqUCwX/Qys9tOJX1xwG0LuZh0PN6zSLZjQbe8CU2FtKRty42XzTnG');
--INSERT INTO "roles" VALUES(9999, 'ROLE_ADMIN');
INSERT INTO "roles" VALUES(9999, 'ROLE_ADMIN');

-- username: Craig Terry, password: password
INSERT INTO "user"(id,username,password) VALUES(1,'Craig Terry','$2a$12$PnHZ8pA8vdGuWar27uOq4.AKddCUM6AnrRvRnvRgb2PHtGOqhGT1q');
INSERT INTO "user_roles"("user_id","roles_roleid") VALUES(1,9999);

-- username: Huanjia Wang, password: password
INSERT INTO "user"(id,username,password) VALUES(2,'Huanjia Wang','$2a$12$PnHZ8pA8vdGuWar27uOq4.AKddCUM6AnrRvRnvRgb2PHtGOqhGT1q');
INSERT INTO "user_roles"("user_id","roles_roleid") VALUES(1,9998);

insert into recipe(id,title,body,source,servings,image,creator_id) values(1,'Pasta with garlic, scallions, cauliflower, and bread crumbs','1T butter
1/4 cup whole wheat bread crumbs (I used panko)
about 2T grated cheese (I used romano)
6-8 ounces pasta (I used linguine)
1-2T extra virgin olive oil
about 2 cups frozen cauliflower florets, thawed, cut into bite-sized pieces
5-6 cloves garlic
3 scallions, chopped, white and green parts separated
2-3T white wine
salt and pepper, to taste
couple of pinches red pepper flakes, optional

In a large skillet, melt butter over medium heat until foamy. Then add bread crumbs, tossing to coat in butter, until toasted and lightly browned. Remove from pan into small bowl; mix in cheese and about a tablespoon of the green scallion tops.
In the meantime, begin to prepare your pasta according to the directions on the package. While the pasta is cooking, put about a tablespoon of olive oil in the same pan you used for the bread crumbs. Over medium heat, add the garlic, whites of the scallions, and cauliflower to the skillet. Saute until the cauliflower shows some caramelization. Then add the wine until the florets are tender-crisp. Add salt, pepper, and red pepper flakes.
When pasta is just shy of al dente, reserve about a cup of the cooking water and drain the pasta. Add the drained pasta to the skillet—still over medium heat—with the veggies and toss with some pasta water, as necessary (I added a little at a time; I ended up using about 1/2 cup), till the pasta is coated and turns easily. You may want to add another little drizzle of olive oil. Again, taste and season accordingly.
','https://fullbellysisters.blogspot.com/2012/06/pasta-with-garlic-scallions-cauliflower.html',2,'https://4.bp.blogspot.com/-mhULYfIdIiM/T-kLTNS24LI/AAAAAAAAB08/dcFsoqM3e-8/s1600/IMG_5400.JPG',1);
insert into recipe(id,title,body,source,servings,image,creator_id) values(2,'Minestrone','2 ounces pancetta, minced
1 tablespoon extra-virgin olive oil
2 small leeks (or 1 large), white and light green parts sliced thin crosswise (about 3/4 cup) and washed thoroughly
2 medium carrots, peeled and cut into small dice (about 3/4 cup)
2 small onions, peeled and cut into small dice (about 3/4 cup)
2 medium ribs celery, trimmed and cut into small dice (about 3/4 cup)
1 medium baking potato, peeled and cut into medium dice (about 1 1/4 cups)
1 medium zucchini, trimmed and cut into medium dice (about 1 1/4 cups)
3 cups stemmed spinach leaves, cut into thin strips
(28 ounce) can whole tomatoes, packed in juice, drained, and chopped
8 cups water
Table salt
can (15 ounces) cannellini beans, drained and rinsed (about 1 1/2 cups)
¼ cup basil pesto (or 1 tablespoon minced fresh rosemary mixed with 1 teaspoon minced garlic and 1 tablespoon extra-virgin olive oil)
Ground black pepper
1 Sauté pancetta in 1 tablespoon extra-virgin olive oil in soup kettle until crisp, 3 to 4 minutes. In the same kettle bring vegetables, tomatoes, water, and 1 teaspoon salt to boil in a soup kettle or pot. Reduce heat to medium-low; simmer, uncovered and stirring occasionally, until vegetables are tender but still hold their shape, about 1 hour. (Soup can be refrigerated in airtight container for 3 days or frozen for 1 month. Defrost if necessary and reheat before proceeding with recipe.)
2 Add beans and cook just until heated through, about 5 minutes. Remove pot from heat. Stir in pesto (or rosemary-garlic mixture). Adjust seasonings, adding pepper and more salt, if necessary. Ladle soup into bowls and serve immediately.','https://feastable.com/users/stevej/minestrone',6,'https://www.aberdeenskitchen.com/wp-content/uploads/2019/10/Easy-Classic-Minestrone-Soup-1-Fi-1200.jpg',1);
insert into recipe(id,title,body,source,servings,image,creator_id) values(3,'Roasted Branzino with Caper Butter','1 stick unsalted butter, softened
1 tablespoon finely chopped capers
1 tablespoon fresh lemon juice
1 tablespoon chopped parsley
Salt
Four 1- to 1 1/4-pound whole branzino or striped bass, scaled and gutted
1 lemon, sliced into 8 rounds
4 large rosemary sprigs
3 tablespoons extra-virgin olive oil


Preheat oven to 425°F. In a medium bowl, mix butter with capers, lemon juice and parsley and season with salt. Hold at room temperature.

Season branzino cavities with salt and stuff 2 lemon rounds and 1 rosemary sprig in each. Season fish with salt.

In a large, nonstick, ovenproof skillet, heat 2 tablespoons olive oil until shimmering. Add 2 branzino and cook over high heat until branzino skin is browned and crisp, about 3 minutes per side.

Transfer fish to a large rimmed baking sheet. Repeat with remaining 1 tablespoon olive oil and 2 stuffed branzino. Roast fish in the oven for about 10 minutes, until just cooked through.

Serve whole or filleted, passing caper butter at the table.','https://www.foodandwine.com/recipes/roasted-branzino-caper-butter',8,'https://www.deliciousorchardsnj.com/wp-content/uploads/Photo-Mar-04-2-28-46-PM-scaled.jpg',1);
insert into recipe(id,title,body,source,servings,image,creator_id) values(4,'Vietnamese Grilled Pork Chops w/ noodle','For the Marinated Pork:
1 teaspoon baking soda
1 1/2 pounds (680g) thin-cut pork chops, preferably from the blade end, or boneless country-style pork ribs, cut into 1/4-inch strips (see note)
3 stalks lemongrass, white and light green parts only, thinly sliced (about 1 ounce; 30g after trimming)
3 tablespoons shallot (from 1 large shallot), roughly chopped (about 5 ounces; 130g)
4 medium cloves garlic, roughly chopped (about 3/4 ounce; 20g)
1/3 cup palm or light brown sugar (about 3 ounces; 85g)
1/3 cup (80ml) Asian fish sauce
2 tablespoons (30ml) soy sauce
1 teaspoon (2g) cornstarch
2 tablespoons (30ml) vegetable oil

For Serving:
1 (14-ounce) package rice vermicelli, soaked in hot water, drained, and chilled (according to package directions)
1/4 cup (6g) coarsely chopped fresh mint and/or perilla (shiso) leaves
1/4 cup (6g) cilantro leaves and tender stems
1 cup thinly sliced Persian cucumbers (about 4 cucumbers; 100g)
Pickled Daikon and Carrots
1/2 cup (3 ounces) crushed unsalted peanuts
Nuoc Cham (Vietnamese dipping sauce)
Lime wedges

Directions
For the Marinated Pork: In a large zipper-lock bag, combine baking soda with 1/2 cup (120ml) water and swish until baking soda is dissolved. Add pork, press out air, and seal bag. Refrigerate for 15 minutes. Drain pork, rinse under cold running water, and pat dry. Rinse zipper-lock bag and reserve.


Meanwhile, if using a mortar and pestle, crush lemongrass, shallot, garlic, and palm sugar to form a rough paste. If using a food processor, combine lemongrass, shallot, garlic, and palm sugar and pulse, scraping down sides, to form a rough paste.


Transfer paste to a bowl and whisk in fish sauce, soy sauce, cornstarch, and vegetable oil. Add pork, tossing to coat. Transfer pork to reserved zipper-lock bag, press out air, and seal. Marinate at room temperature, turning pork once or twice, for 30 minutes. Alternatively, refrigerate up to 12 hours.


If using a charcoal grill, light 1 chimney full of charcoal. When all charcoal is lit and covered with gray ash, pour out and arrange coals on one side of charcoal grate. Set cooking grate in place, cover grill, and allow to preheat for 5 minutes. Alternatively, set half the burners on a gas grill to the highest heat setting, cover, and preheat for 10 minutes. Clean and oil grilling grate.


Grill pork directly over high heat, turning frequently and shifting to cooler side of grill if there are excessive flare-ups, until pork is charred and just cooked through, 3 to 4 minutes total.

Fill serving bowls with chilled noodles, then top with pork, herbs, cucumber, pickled carrot and daikon, and peanuts. Drizzle everything with nuoc cham and serve with lime wedges.','https://feastable.com/users/stevej/vietnamese-grilled-pork-chops-w-slash-noodles',4,'https://4.bp.blogspot.com/-E__DHbw2Eas/Wi1M21ZBquI/AAAAAAAAHW4/vRkPtOQzSQ457_qEOUM0RuAsmSu_tfeXwCLcBGAs/s1600/AlanGoh.jpg',1);
insert into recipe(id,title,body,source,servings,image,creator_id) values(5,'Spinach, Mushroom and Cheese Breakfast Casserole','4 tablespoons extra-virgin olive oil, plus more for greasing the dish
8 cups rustic Italian bread, crust removed, cut into 1-inch cubes
Kosher salt and freshly ground black pepper
10 ounces cremini mushrooms, sliced (about 4 cups)
2 cloves garlic, minced
5 ounces fresh baby spinach (about 5 cups)
4 ounces Gruyere, shredded on the large holes of a box grater (about 1 1/2 cups)
1/3 cup grated Parmesan
8 large eggs
2 1/2 cups half-and-half
1 teaspoon fresh thyme leaves, roughly chopped

Directions
Grease a 9-by-13-inch (3-quart) casserole dish with oil.
Toss the bread cubes with 2 tablespoons of the oil, 1/4 teaspoon salt and a few grinds of pepper in a large bowl. Heat a large skillet over medium heat. Add the bread to the skillet, and cook, tossing occasionally, until toasted and golden brown, about 8 minutes. Return the toasted bread to the bowl to cool.
Wipe out the skillet. Heat the remaining 2 tablespoons oil over medium-high heat until it starts to shimmer. Add the mushrooms in one layer (resist the urge to stir right away), and cook until they start to brown, about 3 minutes; stir, then continue to brown for 2 minutes more. Add the garlic, thyme, 1/4 teaspoon salt and some pepper, stir continuously for 1 minute, then fold in the spinach and another 1/4 teaspoon salt. Continue to cook, stirring often, until the spinach is wilted, 1 to 2 minutes. Remove from the heat.
Place half the bread cubes in the prepared casserole dish, and sprinkle them with half each of the Gruyere and Parmesan. Add the mushroom-spinach mixture in an even layer. Top with the remaining bread cubes, Gruyere and Parmesan.
In a large bowl, whisk together the eggs, half-and-half, 1/2 teaspoon salt and several grinds of pepper. Pour the egg mixture into the casserole dish. Cover with plastic wrap, and refrigerate for at least 6 hours up to overnight. Remove the casserole from the refrigerator 30 minutes before baking.
Preheat the oven to 350 degrees F. Bake the casserole until the custard is set and the top is golden brown, 50 to 55 minutes. Cool for at least 15 minutes before serving warm or at room temperature.','https://feastable.com/users/stevej/spinach-mushroom-and-cheese-breakfast-casserole',5,'https://i1.wp.com/whatagirleats.com/wp-content/uploads/2016/09/Spinach-Mushroom-Casserole-100-close.jpg',1);
insert into recipe(id,title,body,source,servings,image,creator_id) values(6,'Simple Vinaigrette','3 tablespoons white wine vinegar or lemon juice
1 tablespoon water
4 teaspoons dijon mustard
1/2 cup neutral oil (such as canola)
1/4 cup flavored oil (such as extra-virgin olive oil)
1/2 teaspoon salt
1/4 teaspoon freshly ground black pepper


Combine all ingredients in small container or squeeze bottle. Seal container and shake vigorously until emulsified. Shake again before each use.','https://feastable.com/users/stevej/simple-vinaigrette',6,'https://www.primaverakitchen.com/wp-content/uploads/2014/06/how-to-make-basic-vinaigrette3.jpg',1);
insert into recipe(id,title,body,source,servings,image,is_private,creator_id) values(7,'Horseradish Sauce','From The All New Good Housekeeping Cookbook
p. 95
edited by Susan Westmoreland
Copyright 2001

Creamy Horseradish Sauce

1 jar (6 oz) white horseradish
1/2 cup mayonnaise
1/2 cup sour cream
1 tsp. sugar
1/2 tsp. salt

Mix all ingredients together in small bowl.
Serve with beef rib roast or boiled corned beef
makes 1 2/3 cup

Note:
Can sub whipped cream for sour cream,
fold into mixture, but we prefer sour cream.','https://feastable.com/users/Cheryl/horseradish-sauce',0,'https://www.jessicagavin.com/wp-content/uploads/2021/12/horseradish-sauce-4-600x900.jpg',1,1);
insert into recipe(id,title,body,source,servings,image,creator_id) values(8,'Chipotle Chicken Enchiladas','9 corn tortillas
1 15 oz. can crushed fire roasted tomatoes
1 cup low sodium chicken broth
2 tablespoons packed fresh cilantro
1/2 small chipotle chile in adobo, plus 1 teaspoon sauce from the can
1/2 tsp. ground cumin
2 tablespoons vegetable oil, plus more for the dish
Kosher salt and freshly ground black pepper
2 cups shredded rotisserie chicken (skin removed) about 8 oz.
1/2 cup sour cream
1 cup shredded Monterey Jack cheese about 4 oz., divided
1 cup shredded cheddar cheese, divided
Diced avocado and sliced scallions for topping

Preheat broiler.
1. Tear 1 tortilla into pieces and transfer to a blender. Add the tomatoes, chicken broth, cilantro, chipotle and adobo, and cumin. Puree until smooth.
2. Heat 1 tablespoon oil in large skillet over med-hi heat. Add the pureed sauce and simmer, stirring occasionally, until slightly thickened, 6-8 minutes. Remove from heat. Season with salt a a few grinds of pepper.
3. Coat a 9x11 baking dish with oil. Mix the chicken, sour cream, 1/2 cup of each cheese and a pinch of s&p in medium bowl. Warm 8 tortillas in microwave. Spoon about 1/4 cup chicken mixture and roll up to enclose. Put in baking dish and brush with remaining tablespoon of oil.
4 Broil the enchiladas until lightly toasted, 3-5 min. Top with sauce and sprinkle with remaining cheeses. Broil until sauce is bubbling and cheese melts. 1-2 min. Top with avocado and scallions.

P.S. The sauce alone is a 5 *, wonderful dipping sauce for Tostitos!!','https://feastable.com/users/Cheryl/chipotle-chicken-enchiladas',4,'https://images.ctfassets.net/vmuke7sdou62/6AczlekinRjbxCim6cx3nu/1a18e03fe21fae82ff2ce8216a31a0d8/Full_res_JPG-RR_Post_Holiday_Sale_Chipotle_Chicken_Enchiladas_Recipe_Glam.jpg',1);
insert into recipe(id,title,body,source,servings,image,creator_id) values(9,'Tuna Macaroni Salad','1 lb of macaroni elbows
2-3 celery ribs, diced
2 tomatoes, chopped
1/4 cup green olives, sliced
1 can of tuna fish
1 Tablespoon salt
mayonaisse

Boil the macaroni for about 10 minutes or until done. Drain and place in a large bowl.
Add all ingredients and mix. For mayo, add 1/2 cup at a time until the mixture binds together.
Refrigerate/serve chilled.','https://feastable.com/users/stevej/tuna-macaroni-salad',8,'https://www.thecountrycook.net/wp-content/uploads/2015/12/Tuna-Macaroni-Salad-square.jpg',2);
insert into recipe(id,title,body,source,servings,image,is_private,creator_id) values(10,'Mexican Chicken Spagetti','1 lb boneless, skinless chicken breasts
1 lb velveeta cheese, regular or mexican...
1 can(s) rotel tomatoes, regular or hot
1 lb spaghetti pasta
1 stick butter
1 can(s) cream of chicken soup, undiluted
1 can(s) cream of mushroom soup, undiluted
1 medium onion, chopped
1 bell pepper, red or green, chopped
salt and pepper to taste

Boil chicken breasts in a large pot adding 1/2 teaspoon of salt and 1/2 teaspoon of black pepper to water.
Remove chicken when completely done, about 10 to 12 minutes.
Boil spaghetti pasta in remaining broth according to package directions. Drain pasta after done and discard water. Set aside the pasta...Do not rinse.
Melt the butter in that same (empty) pot and saute the onion and bell pepper.
Add tomatoes, soup, cooked chicken (cut into bite-size pieces) and spaghetti to the sauteed onion mixture, one at a time, and gently mix together.
Add cheese and stir together, mixing well. Add salt and pepper to taste.
Heat until cheese is melted thoroughly, stirring occasionally to keep from scorching.

SERVING SUGGESTIONS: Garnish with freshly grated Parmesan cheese and serve with a salad and hot garlic bread.','https://feastable.com/users/craig/mexican-chicken-spagetti',8,'https://i2.wp.com/buythiscookthat.com/wp-content/uploads/2018/11/Mexican-Chicken-Spaghetti-3.jpg',1,1);

INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(0,'ROOT',-1,'',0,TRUE,-1,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(1,'Meals',-1,'',1,TRUE,0,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(2,'Dinner/Supper',-1,'',1,FALSE,1,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(3,'Lunch',-1,'',1,FALSE,1,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(4,'Breakfast',-1,'',1,TRUE,1,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(5,'Appetizers',-1,'',1,TRUE,1,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(6,'Desserts',-1,'',1,TRUE,1,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(7,'Beverage',-1,'',1,TRUE,1,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(8,'Entrees',-1,'',1,TRUE,0,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(15,'Casseroles',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(16,'Pizza',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(17,'Pasta',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(18,'Soup',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(19,'Sea Food',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(20,'Roast',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(21,'Meat Loaf',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(22,'Ribs',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(23,'Quiche',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(24,'Sandwich',-1,'',1,TRUE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(25,'Vegatables',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(26,'Salad',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(27,'Stir-Fry',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(28,'Burrito',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(29,'Enchillado',-1,'',2,FALSE,8,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(50,'Desserts',-1,'',1,TRUE,0,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(51,'Cakes',-1,'',2,FALSE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(52,'Pies',-1,'',2,FALSE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(53,'Pudding',-1,'',2,FALSE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(54,'Ice Cream',-1,'',2,FALSE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(55,'Cobbler',-1,'',2,FALSE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(56,'Frostings/Fillings',-1,'',2,FALSE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(57,'Special',-1,'',2,FALSE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(58,'Trifle',-1,'',2,FALSE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(59,'Cheesecake',-1,'',2,FALSE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(61,'Mousse',-1,'',2,FALSE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(62,'Tiramasu',-1,'',2,FALSE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(75,'Sweet',-1,'',1,TRUE,50,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(76,'Cookies',-1,'',2,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(77,'Sweets',-1,'',2,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(78,'Tarts',-1,'',2,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(80,'Candy',-1,'',2,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(81,'Pastry',-1,'',2,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(82,'Confection',-1,'',2,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(83,'Parfait',-1,'',2,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(84,'Chocolate',-1,'',2,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(85,'Pralines',-1,'',2,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(86,'Brownies',-1,'',6,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(87,'Biscotti',-1,'',2,FALSE,78,610,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(88,'Gelatin',-1,'',2,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(89,'Pork',-1,'',2,FALSE,75,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(90,'fish',-1,'',19,FALSE,19,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(101,'Finger Food',-1,'',2,FALSE,5,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(102,'Snack',-1,'',2,FALSE,5,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(103,'Antiposto',-1,'',2,FALSE,5,610,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(104,'Relish',-1,'',2,FALSE,5,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(105,'Spread',-1,'',2,FALSE,5,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(107,'Dip',-1,'',2,FALSE,5,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(108,'Fruit',-1,'',2,FALSE,5,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(121,'Eggs',-1,'',2,FALSE,4,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(122,'Pancake/Waffle',-1,'',2,FALSE,4,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(123,'Toasts',-1,'',2,FALSE,4,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(124,'Muffins',-1,'',2,FALSE,4,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(150,'Sides',-1,'',1,FALSE,0,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(151,'Salad',-1,'',2,FALSE,150,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(152,'vegetable',-1,'',2,FALSE,150,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(153,'Bread',-1,'',2,FALSE,150,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(154,'Bean',-1,'',2,FALSE,150,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(155,'Stuffings/Dressings',-1,'',2,FALSE,150,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(156,'Sauce',-1,'',1,TRUE,150,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(157,'Condiments',-1,'',1,TRUE,150,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(180,'BBQ',-1,'',2,FALSE,156,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(181,'Spagetti',-1,'',2,FALSE,156,610,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(182,'Gravy',-1,'',2,FALSE,156,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(183,'Bolognese',-1,'',2,FALSE,156,610,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(184,'Enchilado',-1,'',2,FALSE,156,602,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(185,'Alfrado',-1,'',2,FALSE,156,610,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(186,'Marinade',-1,'',2,FALSE,156,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(187,'Glaze',-1,'',2,FALSE,156,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(188,'Pesto',-1,'',2,FALSE,156,610,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(189,'Cr?me',-1,'',2,FALSE,156,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(190,'Basting',-1,'',2,FALSE,156,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(191,'Hollandaise',-1,'',2,FALSE,156,601,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(192,'Curd',-1,'',2,FALSE,156,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(193,'Maranara',-1,'',2,FALSE,156,610,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(194,'Primavera',-1,'',2,FALSE,156,610,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(195,'Spicy/Hot',-1,'',2,FALSE,156,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(196,'Dip',-1,'',2,FALSE,156,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(197,'Relish',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(198,'Mayonase',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(199,'salsa',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(200,'Vinaigrette',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(201,'Jelly/Jam',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(202,'Salad Dressing',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(203,'Cocktail',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(204,'Sirup',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(205,'Spread',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(206,'Honey',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(207,'Ketchup',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(208,'Chutney',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(209,'Tartar',-1,'',2,FALSE,157,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(230,'Clubs',-1,'',2,FALSE,24,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(231,'Wraps',-1,'',2,FALSE,24,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(232,'Burgers',-1,'',2,FALSE,24,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(233,'Gyro',-1,'',2,FALSE,24,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(234,'Breadfast',-1,'',2,FALSE,24,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(235,'Panini',-1,'',2,FALSE,24,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(236,'Po'' Boy',-1,'',2,FALSE,24,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(250,'drinks/beverage',-1,'',1,TRUE,0,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(251,'Alcoholic',-1,'',2,FALSE,250,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(252,'Non-Alcoholic',-1,'',2,FALSE,250,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(253,'Cocktail',-1,'',2,FALSE,250,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(254,'Shake',-1,'',2,FALSE,250,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(255,'Smoothie',-1,'',2,FALSE,250,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(256,'Punch',-1,'',2,FALSE,250,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(257,'Holiday',-1,'',2,FALSE,250,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(258,'EggNog',-1,'',2,FALSE,250,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(259,'Brunch',-1,'',2,FALSE,250,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(260,'Wine',-1,'',2,FALSE,250,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(261,'Beer',-1,'',2,FALSE,250,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(300,'Seasonal',-1,'',4,TRUE,0,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(301,'Holiday',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(302,'Christmas',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(303,'Easter',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(304,'St. Patricks',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(305,'July 4th',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(306,'Winter',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(307,'Summer',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(308,'Spring',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(309,'Fall',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(310,'Holloween',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(311,'Thanksgiving',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(312,'New Year Eve',-1,'',4,FALSE,300,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(350,'Seasoning',-1,'',5,TRUE,0,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(351,'Spices',-1,'',5,FALSE,350,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(352,'Rub',-1,'',5,FALSE,350,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(353,'Herbs',-1,'',5,FALSE,350,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(354,'Blends',-1,'',5,FALSE,350,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(500,'Dietary',-1,'',5,TRUE,0,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(501,'Vegitarian',-1,'',6,FALSE,500,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(502,'Vegan',-1,'',6,FALSE,500,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(503,'Healthy',-1,'',6,FALSE,500,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(504,'Spicy',-1,'',6,FALSE,500,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(505,'Low Carb',-1,'',6,FALSE,500,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(506,'Low Calory',-1,'',6,FALSE,500,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(507,'Low Fat',-1,'',6,FALSE,500,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(600,'Ethnic',-1,'',7,TRUE,0,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(601,'European',-1,'',7,TRUE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(602,'French',-1,'',7,TRUE,601,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(603,'Greek',-1,'',7,TRUE,601,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(604,'Poland',-1,'',7,TRUE,601,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(605,'German',-1,'',7,TRUE,601,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(606,'Russian',-1,'',7,TRUE,601,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(607,'Scanavian',-1,'',7,TRUE,601,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(608,'UK',-1,'',7,TRUE,601,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(609,'Ireland',-1,'',7,TRUE,601,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(610,'Italian',-1,'',7,TRUE,601,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(611,'Mediterranean',-1,'',7,TRUE,601,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(612,'Asian',-1,'',7,TRUE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(613,'East Asia',-1,'',7,TRUE,612,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(614,'Korean',-1,'',7,TRUE,613,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(615,'Japanese',-1,'',7,FALSE,613,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(616,'Chinese',-1,'',7,FALSE,613,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(617,'South Asia',-1,'',7,TRUE,612,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(618,'bangladesh',-1,'',7,FALSE,617,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(619,'Iran',-1,'',7,FALSE,617,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(620,'Pakistan',-1,'',7,FALSE,617,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(621,'South East Asia',-1,'',7,FALSE,612,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(622,'Vietnam',-1,'',7,FALSE,621,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(623,'Thai',-1,'',7,FALSE,621,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(624,'Malaysia',-1,'',7,FALSE,621,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(625,'Indonesia',-1,'',7,FALSE,621,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(626,'Canada',-1,'',7,TRUE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(627,'French Canada',-1,'',7,FALSE,626,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(628,'Toronto',-1,'',7,FALSE,626,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(629,'Vancouver',-1,'',7,FALSE,626,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(630,'American',-1,'',7,TRUE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(631,'TexMex',-1,'',7,FALSE,630,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(632,'Southern',-1,'',7,FALSE,630,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(633,'Northwest',-1,'',7,FALSE,630,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(634,'California',-1,'',7,FALSE,630,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(635,'Southwestern',-1,'',7,FALSE,630,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(636,'Northeast',-1,'',7,FALSE,630,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(637,'Jewish',-1,'',7,FALSE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(638,'Indian',-1,'',7,FALSE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(639,'African',-1,'',7,FALSE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(640,'Latin American',-1,'',7,FALSE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(641,'Mexican',-1,'',7,FALSE,640,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(642,'Carribbean',-1,'',7,FALSE,640,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(643,'South American',-1,'',7,FALSE,640,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(644,'New Zealand',-1,'',7,FALSE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(645,'Austraiian',-1,'',7,FALSE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(700,'Quick meal',-1,'',8,FALSE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(701,'For Company',-1,'',8,FALSE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(702,'Impressive/fancy',-1,'',8,FALSE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(703,'Crock Pot',-1,'',8,FALSE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(704,'Slow cook',-1,'',8,FALSE,600,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(900,'Non-Food',-1,'',9,TRUE,0,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(901,'Cleaner',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(902,'Detergent',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(903,'Soap',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(904,'Play/Toy',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(905,'Creative',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(906,'Medicinal',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(907,'lotion',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(908,'Softener',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(909,'Pet Care',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(910,'Polish',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(911,'Freshener',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(912,'Conditioner',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(913,'Scrub',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(914,'Ornaments',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(915,'Disenfectent',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(916,'Unclogger',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(917,'Polish',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(918,'Freshener',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(919,'Conditioner',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(920,'Scrub',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(921,'Ornaments',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(922,'Disenfectent',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO "tag"(tag_id,name,user_id,description,type,is_parent_p,parent_id,ethnic_tag_id,defined_p) VALUES(923,'Unclogger',-1,'',9,FALSE,900,-1,TRUE);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(1,2);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(1,17);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(1,610);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(2,2);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(2,18);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(2,610);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(3,2);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(3,19);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(3,90);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(3,610);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(4,2);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(4,8);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(4,622);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(5,2);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(5,8);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(6,200);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(6,157);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(6,150);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(6,602);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(7,156);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(7,157);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(8,631);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(8,630);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(8,641);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(8,640);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(8,231);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(8,2);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(8,3);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(9,26);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(9,25);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(9,5);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(9,501);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(9,90);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(10,2);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(10,17);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(10,181);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(10,641);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(10,643);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(1,1);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(2,1);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(3,1);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(4,1);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(5,1);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(8,1);
INSERT INTO RECIPE_TAG(recipe_id, tags_id) VALUES(10,1);

INSERT INTO COMMENT(id, content, recipe_id) VALUES(1, 'What a good recipe!', 1);
INSERT INTO COMMENT(id, content, recipe_id) VALUES(2, 'Looks so good!', 1);