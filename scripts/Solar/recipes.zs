import crafttweaker.item.IItemStack;
import scripts.BX.item.bx;

var panel as IItemStack[]=[
    <solarflux:solar_panel_1>,
    <solarflux:solar_panel_2>,
    <solarflux:solar_panel_3>,
    <solarflux:solar_panel_4>,
    <solarflux:solar_panel_5>,
    <solarflux:solar_panel_6>,
    <solarflux:solar_panel_7>,
    <solarflux:solar_panel_8>
];

for i in panel{
    recipes.remove(i);
}

var i as int = 0;
while(i<7){
    recipes.addShapeless(panel[i+1],[
        panel[i],panel[i],panel[i],panel[i],panel[i]
    ]);
	i+=1;
}

var iron = <minecraft:iron_ingot>;
var glass = <minecraft:glass>;
recipes.addShaped(panel[0]*4,[
    [iron,iron,iron],
    [null,bx[4],null],
    [glass,glass,glass]
]);
recipes.addShaped(panel[0]*10,[
    [iron,iron,iron],
    [bx[4],bx[4],bx[4]],
    [glass,glass,glass]
]);

mods.avaritia.ExtremeCrafting.addShapeless("rainbow",<solarflux:custom_solar_panel_rainbow>,[
<solarflux:solar_panel_1>,
<solarflux:solar_panel_2>,
<solarflux:solar_panel_3>,
<solarflux:solar_panel_4>,
<solarflux:solar_panel_5>,
<solarflux:solar_panel_6>,
<solarflux:solar_panel_7>,
<solarflux:solar_panel_8>,
<solarflux:solar_panel_alchemical>,
<solarflux:solar_panel_alchemical_brass>,
<solarflux:solar_panel_thaumium>,
<solarflux:solar_panel_void_metal>,
<solarflux:solar_panel_wyvern>,
<solarflux:solar_panel_draconic>,
<solarflux:solar_panel_chaotic>,
<solarflux:solar_panel_infinity>,
<additions:bxloveu-bx_enchingot>,
<additions:bxloveu-bx_enchingot>,
<additions:bxloveu-bx_enchingot>,
<additions:bxloveu-bx_enchingot>,
<additions:bxloveu-bx_enchingot>,
<additions:bxloveu-bx_enchingot>
]);