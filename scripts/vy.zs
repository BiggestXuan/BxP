import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.aa.bx;
import scripts.API.config.dragon;

var name as string = "tc_name";
var count as int = 0;

RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<minecraft:fish>)
.addItemInput(<additions:bxloveu-caigengzi>*4)
.addAspcetInput(25,"aqua")
.addAspcetInput(10,"aer")
.addItemOutput(<additions:bxloveu-fish>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<minecraft:tnt>)
.addItemInput(<additions:bxloveu-bx_uningot>*6)
.addAspcetInput(30,"vitium")
.addAspcetInput(20,"ignis")
.addAspcetInput(5,"biggestxuan")
.addItemOutput(<thaumcraft:causality_collapser>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<additions:bxloveu-bx_ingot>)
.addItemInput(<thaumcraft:ingot:1>*2)
.addItemInput(<thaumcraft:salis_mundus>*4)
.addItemInput(<thaumcraft:amber>*2)
.addAspcetInput(50,"metallum")
.addAspcetInput(30,"praecantatio")
.addAspcetInput(50,"biggestxuan")
.addItemOutput(<thaumadditions:mithrillium_ingot>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<minecraft:iron_block>)
.addItemInput(<minecraft:blaze_rod>*3)
.addItemInput(<twilightforest:fiery_blood>*3)
.addAspcetInput(80,"ignis")
.addAspcetInput(20,"metallum")
.addItemOutput(<twilightforest:block_storage:1>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<additions:bxloveu-bx_ingot>)
.addItemInput(<thaumadditions:mithrillium_ingot>*2)
.addItemInput(<minecraft:nether_star>*2)
.addItemInput(<draconicevolution:awakened_core>*2)
.addItemInput(<twilightforest:fiery_ingot>*2)
.addAspcetInput(300,"victus")
.addAspcetInput(100,"metallum")
.addAspcetInput(50,"alkimia")
.addAspcetInput(200,"biggestxuan")
.addItemOutput(<thaumadditions:adaminite_ingot>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<bloodarsenal:blood_diamond:2>)
.addItemInput(<twilightforest:fiery_ingot>*2)
.addItemInput(<additions:bxloveu-bx_ingot>*2)
.addItemInput(<bloodarsenal:base_item:4>*2)
.addAspcetInput(150,"victus")
.addAspcetInput(50,"ignis")
.addAspcetInput(50,"biggestxuan")
.addItemOutput(<bloodarsenal:blood_diamond:3>)
.build();

name+=1;    
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<additions:bxloveu-bx_ingot>)
.addItemInput(<thaumadditions:adaminite_ingot>)
.addItemInput(<additions:bxloveu-gold_gengzi>*2)
.addItemInput(<additions:bxloveu-bx_superdust>*2)
.addItemInput(sb[1]*2)
.addItemInput(<additions:bxloveu-sdxhop>)
.addAspcetInput(50,"victus")
.addAspcetInput(100,"humanus")
.addAspcetInput(50,"spiritus")
.addAspcetInput(50,"cognitio")
.addAspcetInput(300,"biggestxuan")
.addItemOutput(<additions:bxloveu-bx_enchingot>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(bx[6])
.addItemInput(bx[5]*2)
.addItemInput(<thaumadditions:adaminite_ingot>)
.addItemInput(<twilightforest:fiery_ingot>*2)
.addItemInput(dragon[3])
.addAspcetInput(500,"praecantatio")
.addAspcetInput(500,"biggestxuan")
.addAspcetInput(50,"caeles")
.addItemOutput(<thaumadditions:mithminite_ingot>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",300)
.addItemInput(<avaritia:resource:6>*4)
.addItemInput(<additions:bxloveu-creative_star>)
.addItemInput(bx[4])
.addAspcetInput(10000,"biggestxuan")
.addItemOutput(<additions:bxloveu-bx_superingot>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",100)
.addItemInput(bx[5])
.addItemInput(<minecraft:gold_ingot>*4)
.addAspcetInput(3,"biggestxuan")
.addItemOutput(<additions:bxloveu-lower_martix_ingot>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",200)
.addItemInput(sb[0]*4)
.addItemInput(bx[5])
.addItemInput(<minecraft:lapis_block>*8)
.addItemInput(<minecraft:obsidian>*8)
.addFluidInput(<liquid:lava>*5000)
.addEnergyPerTickInput(10015)
.addAspcetInput(100,"vitreus")
.addAspcetInput(72,"biggestxuan")
.addAspcetInput(10,"tenebrae")
.addAspcetInput(5,"aqua")
.addItemOutput(<additions:bxloveu-tyrone_ingot>)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",100)
.addItemInput(sb[0])
.addItemInput(<additions:bxloveu-ou_gold>*2)
.addItemInput(<additions:bxloveu-oumang_ingot>*2)
.addItemInput(<thaumadditions:adaminite_ingot>*2)
.addAspcetInput(500,"biggestxuan")
.addAspcetInput(150,"vitreus")
.addItemOutput(sb[1])
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"tc",100)
.addItemInput(<minecraft:diamond_block>)
.addAspcetInput(500,"vitreus")
.addItemOutput(<additions:bxloveu-diamond_block>)
.build();