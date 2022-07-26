
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

mods.astralsorcery.Altar.addTraitAltarRecipe("star",<additions:bxloveu-star_power>*4,4500,600,
[
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>, 
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
<additions:bxloveu-bx_enchingot>,
<additions:bxloveu-bx_enchingot>,
<additions:bxloveu-bx_enchingot>,
<additions:bxloveu-bx_enchingot>,
xuyu,
shengxi,
dunjia,
feigong,
jieli,
mufu,
jingjin,
shengmang,
tianlu,
huansheng,
nanji,
time
]
);

<additions:bxloveu-star_power>.addTooltip(game.localize("bxp.tip.item.astralgem"));

for i in modss{
    recipes.removeByMod(i);
    if(loadedMods in i){
        for item in loadedMods[i].items{
            mods.ItemStages.addItemStage("disabled",item);
        }
    }
}