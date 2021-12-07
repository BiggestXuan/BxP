#priority 150
import moretweaker.draconicevolution.FusionCrafting;

recipes.remove(<solarflux:solar_panel_wyvern>);
recipes.remove(<solarflux:solar_panel_draconic>);
FusionCrafting.remove(<draconicevolution:chaotic_core>);

FusionCrafting.add(<solarflux:solar_panel_wyvern>,<draconicevolution:wyvern_core>,FusionCrafting.WYVERN,1000000,[
<solarflux:solar_panel_8>,<solarflux:solar_panel_8>,<solarflux:solar_panel_8>,<solarflux:solar_panel_8>
]);

FusionCrafting.add(<solarflux:solar_panel_draconic>,<draconicevolution:draconic_core>,FusionCrafting.DRACONIC,10000000,[
<solarflux:solar_panel_wyvern>,<solarflux:solar_panel_wyvern>,<solarflux:solar_panel_wyvern>,<solarflux:solar_panel_wyvern>
]);

FusionCrafting.add(<solarflux:solar_panel_chaotic>*2,<draconicevolution:chaotic_core>,FusionCrafting.CHAOTIC,100000000,[
<solarflux:solar_panel_draconic>,<solarflux:solar_panel_draconic>,<solarflux:solar_panel_draconic>,<solarflux:solar_panel_draconic>
]);

