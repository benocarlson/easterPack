# This function is run every tick to ensure that every player has exactly one of each constant item

execute as @a store result score @s has_chorus run clear @s chorus_fruit 0
execute as @a if score @s has_chorus matches 0 run give @s chorus_fruit{display:{Name:'"Return Fruit"',Lore:['"Eat this to return to the mall"']}} 1
execute as @a if score @s has_chorus matches 2.. run clear @s chorus_fruit 1

execute as @a if score @s ate_chorus_fruit matches 1.. run function easter-general:return_home

execute as @a store result score @s has_pick run clear @s diamond_pickaxe 0
execute as @a if score @s has_pick matches 0 run give @s diamond_pickaxe{Unbreakable:true, CanDestroy:[terracotta, white_terracotta, orange_terracotta, magenta_terracotta, light_blue_terracotta, yellow_terracotta, lime_terracotta, pink_terracotta, gray_terracotta, light_gray_terracotta, cyan_terracotta, purple_terracotta, blue_terracotta, brown_terracotta, green_terracotta, red_terracotta, black_terracotta, white_concrete, orange_concrete, magenta_concrete, light_blue_concrete, yellow_concrete, lime_concrete, pink_concrete, gray_concrete, light_gray_concrete, cyan_concrete, purple_concrete, blue_concrete, brown_concrete, green_concrete, red_concrete, black_concrete], HideFlags:8, display:{Name:'"Gatherer\'s Pick"', Lore:['"Can collect any easter egg"']}} 1
execute as @a if score @s has_pick matches 2.. run clear @s diamond_pickaxe 1
execute as @a run clear @s iron_pickaxe 1

#execute as @a[team=hunters] store result score @s has_pick run clear @s iron_pickaxe 0
#execute as @a[team=hunters] if score @s has_pick matches 0 run give @s iron_pickaxe{Unbreakable:true, CanDestroy:[terracotta, white_terracotta, orange_terracotta, magenta_terracotta, light_blue_terracotta, yellow_terracotta, lime_terracotta, pink_terracotta, gray_terracotta, light_gray_terracotta, cyan_terracotta, purple_terracotta, blue_terracotta, brown_terracotta, green_terracotta, red_terracotta, black_terracotta], HideFlags:8, display:{Name:'"Hunter\'s Pick"',Lore:['"Can collect terracotta easter eggs"']}} 1
#execute as @a[team=hunters] if score @s has_pick matches 2.. run clear @s iron_pickaxe 1
#execute as @a[team=hunters] run clear @s diamond_pickaxe 1