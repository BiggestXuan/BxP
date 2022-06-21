import moretweaker.draconicevolution.FusionCrafting;
import scripts.aa.bx;

var soup = <cfm:item_soap>;
var clay =<minecraft:clay_ball>;
var g = <minecraft:gold_ingot>;

recipes.remove(soup);
recipes.addShaped(soup*2,[
    [clay,clay,clay],
    [clay,bx[4],clay],
    [clay,clay,clay]
]);

recipes.remove(<cfm:item_soap_water>);
recipes.remove(<cfm:item_super_soap_water>);

FusionCrafting.add(<cfm:item_soap_water>,<minecraft:water_bucket>,FusionCrafting.BASIC,100000,[
    soup,soup,soup,soup,soup,soup,soup,soup
]);

FusionCrafting.add(<cfm:item_super_soap_water>,<cfm:item_soap_water>,FusionCrafting.BASIC,300000,[
    g,g,g,g,g,g,g,g
]);