#priority 51
import thaumcraft.aspect.CTAspectStack;
import crafttweaker.item.IItemStack;

import scripts.aa.bx;

static asp as CTAspectStack[]=[
    <aspect:aer>,
    <aspect:terra>,
    <aspect:ignis>,
    <aspect:aqua>,
    <aspect:ordo>,
    <aspect:perditio>,
    <aspect:vacuos>,
    <aspect:lux>,
    <aspect:motus>,
    <aspect:gelum>,
    <aspect:vitreus>,
    <aspect:mortuus>,
    <aspect:potentia>,
    <aspect:permutatio>,
    <aspect:praecantatio>,
    <aspect:auram>,
    <aspect:alkimia>,
    <aspect:vitium>,  
    <aspect:tenebrae>,  
    <aspect:alienis>,  
    <aspect:volatus>,  
    <aspect:herba>,  
    <aspect:instrumentum>,  
    <aspect:fabrico>,  
    <aspect:machina>,  
    <aspect:vinculum>,  
    <aspect:spiritus>,  
    <aspect:cognitio>,  
    <aspect:sensus>,  
    <aspect:aversio>,  
    <aspect:exanimis>,  
    <aspect:desiderium>,
    <aspect:bestia>,
    <aspect:humanus>,
    <aspect:biggestxuan>,
    <aspect:coralos>,
    <aspect:dreadia>,
    <aspect:fluctus>,
    <aspect:sonus>,
    <aspect:exitium>,
    <aspect:caeles>,
    <aspect:draco>,
    <aspect:infernum>,
    <aspect:ventus>,
    <aspect:visum>,
    <aspect:imperium>,
    <aspect:sol>,
    <aspect:metallum>
]; //line-7

function set (x as IItemStack,y as CTAspectStack[]){
    x.setAspects(y);
}

var mod as string[]=[
    "bacterium",
    "salted_fish_technology",
    "manaita_plus",
    "lolipickaxe",
    "thelegendofthebraveii",
    "flammpfeil.slashblade",
    "slashblade",
    "xijun",
    "bacteria",
    "decon_table",
    "decomp_table",
    "deconstriction",
    "uncraftingtable"
];

for i in mod{
    if(loadedMods in i){
        for item in loadedMods[i].items{
            recipes.removeAll();
            mods.ItemStages.addItemStage("disabled",item);
        }
    }
}

set(<additions:bxloveu-bx_goldore>,[asp[34]*10,asp[0]*15,asp[2]*5]);
set(<additions:bxloveu-bx_goldingot>,[asp[34]*15,asp[33]*5,asp[47]*10]);
set(bx[0],[asp[34]*10,asp[33]*5,asp[14]*5]);
set(bx[1],[asp[34]*15,asp[33]*8,asp[14]*8]);
set(bx[2],[asp[34]*13,asp[33]*7,asp[14]*7]);
set(bx[3],[asp[34]*8,asp[33]*4,asp[14]*4]);
set(bx[4],[asp[34]*10,asp[33]*8,asp[14]*5,asp[10]*25,asp[47]*10]);
set(bx[5],[asp[34]*50,asp[33]*15,asp[14]*24,asp[14]*120,asp[47]*70]);
set(bx[6],[asp[34]*300,asp[33]*34,asp[14]*80,asp[14]*500,asp[32]*30,asp[47]*200]);
set(bx[8],[asp[34]*30,asp[14]*15,asp[37]*10]);
set(bx[9],[asp[34]*100,asp[14]*45,asp[37]*50]);
set(bx[10],[asp[34]*100,asp[14]*45,asp[47]*50,asp[7]*65,asp[47]*100]);
set(bx[11],[asp[34]*100,asp[14]*45,asp[47]*65,asp[19]*75,asp[47]*100]);
set(bx[12],[asp[34]*7,asp[10]*10,asp[21]*21,asp[8]*7]);
set(bx[13],[asp[34]*40,asp[10]*15,asp[21]*37,asp[8]*19,asp[31]*45]);
set(bx[14],[asp[34]*40,asp[10]*15,asp[21]*37,asp[8]*19,asp[31]*45]);
set(<additions:bxloveu-tulye_haie>,[asp[33]*12,asp[32]*8]);

set(bx[19],[asp[0]*50,asp[1]*50,asp[2]*50,asp[3]*50,asp[4]*50,asp[5]*50,asp[34]*50]);

set(bx[7],[asp[0]*500,asp[1]*500,asp[2]*500,asp[3]*500,asp[4]*500,asp[5]*500,asp[6]*500,asp[7]*500,asp[8]*500,asp[9]*500,asp[10]*500,
asp[11]*500,asp[12]*500,asp[13]*500,asp[14]*500,asp[15]*500,asp[16]*500,asp[17]*500,asp[18]*500,asp[19]*500,asp[20]*500,asp[21]*500,asp[22]*500,
asp[23]*500,asp[24]*500,asp[25]*500,asp[26]*500,asp[27]*500,asp[28]*500,asp[29]*500,asp[30]*500,asp[31]*500,asp[32]*500,asp[33]*500,asp[34]*500,
asp[35]*500,asp[36]*500,asp[37]*500,asp[38]*500,asp[39]*500,asp[40]*500,asp[41]*500,asp[42]*500,asp[43]*500,asp[44]*500,asp[45]*500,asp[46]*500,asp[47]*500]);

set(<mysticalagriculture:crafting>,[asp[21]]);
set(<mysticalagriculture:crafting:5>,[asp[10]]);