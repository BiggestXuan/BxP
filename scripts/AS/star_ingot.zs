// 基础星座
var xuyu=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio"}});
var shengxi=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.aevitas"}});
var dunjia=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.armara"}});
var feigong=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.discidia"}});
var jieli=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.evorsio"}});

// 高阶星座
var mufu=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.bootes"}});
var jingjin=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.mineralis"}});
var shengmang=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.lucerna"}});
var tianlu=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.fornax"}});
var huansheng=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.pelotrio"}});
var nanji=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.octans"}});

//最稀有星座
var time=<astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.horologium"}});

mods.astralsorcery.Altar.addTraitAltarRecipe("star",<additions:bxloveu-star_power>*4,4500,600,
[
    //0-8
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>, 
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
<abyssalcraft:ethaxiumingot>,
    //9-12
<additions:bxloveu-bx_enchingot>,
<additions:bxloveu-bx_enchingot>,
<additions:bxloveu-bx_enchingot>,
<additions:bxloveu-bx_enchingot>,
    //13-24
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