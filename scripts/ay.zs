import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.API.config.amountForBxIngot;
import scripts.API.config.amountForGoldCaigengzi;

var amount = amountForBxIngot;

var name as string = "as_name";
var count as int = 0;
var xuyu=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio"}});
var shengxi=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.aevitas"}});
var dunjia=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.armara"}});
var feigong=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.discidia"}});
var jieli=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.evorsio"}});
var mufu=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.bootes"}});
var jingjin=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.mineralis"}});
var shengmang=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.lucerna"}});
var tianlu=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.fornax"}});
var huansheng=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.pelotrio"}});
var nanji=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.octans"}});
var time=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.horologium"}});

RecipeBuilder.newBuilder(name+count,"as",100)
.addItemInput(<astralsorcery:itemcraftingcomponent>)
.addItemOutput(<astralsorcery:itemcraftingcomponent:4>)
.addFluidInput(<liquid:astralsorcery.liquidstarlight>*1000)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"as",100)
.addItemInput(<thermalfoundation:fertilizer:2>*9)
.addItemInput(<additions:bxloveu-bx_dust>*4)
.addItemInput(<minecraft:diamond>*4)
.addStarlightInput(300,"astralsorcery.constellation.aevitas")
.addItemOutput(<additions:bxloveu-super_fer>*9)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"as",100)
.addItemInput(<additions:bxloveu-bx_goldingot>*4)
.addItemInput(<thaumcraft:ingot:1>)
.addItemInput(<additions:bxloveu-bx_dust>*4)
.addItemInput(bx[12]*4)
.addItemInput(bx[4]*12)
.addItemInput(bx[0])
.addItemInput(bx[1])
.addItemInput(bx[2])
.addItemInput(bx[3])
.addStarlightInput(500,"astralsorcery.constellation.discidia")
.addItemOutput(<additions:bxloveu-bx_ingot>*amount)
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"as",100)
.addItemInput(<additions:bxloveu-caigengzi>*8)
.addItemInput(<additions:bxloveu-bx_ingot>)
.addItemInput(<astralsorcery:itemusabledust>*4)
.addItemInput(<minecraft:gold_ingot>*8)
.addItemInput(<draconicevolution:wyvern_core>*4)
.addItemInput(<minecraft:gold_block>*6)
.addItemOutput(<additions:bxloveu-gold_gengzi>*amountForGoldCaigengzi)
.addStarlightInput(1200,"astralsorcery.constellation.lucerna")
.build();

name+=1;
RecipeBuilder.newBuilder(name+count,"as",100)
.addItemInput(<abyssalcraft:ethaxiumingot>*9)
.addItemInput(<additions:bxloveu-bx_enchingot>*4)
.addItemInput(xuyu)
.addItemInput(shengxi)
.addItemInput(dunjia)
.addItemInput(feigong)
.addItemInput(jieli)
.addItemInput(mufu)
.addItemInput(jingjin)
.addItemInput(shengmang)
.addItemInput(tianlu)
.addItemInput(huansheng)
.addItemInput(nanji)
.addItemInput(time)
.addStarlightInput(1500)
.addItemOutput(<additions:bxloveu-star_power>*4)
.addItemOutput(xuyu)
.addItemOutput(shengxi)
.addItemOutput(dunjia)
.addItemOutput(feigong)
.addItemOutput(jieli)
.addItemOutput(mufu)
.addItemOutput(jingjin)
.addItemOutput(shengmang)
.addItemOutput(tianlu)
.addItemOutput(huansheng)
.addItemOutput(nanji)
.addItemOutput(time)
.build();