#priority 28
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var bx as Fluid = VanillaFactory.createFluid("bx_fluid",0x00ff01);
bx.vaporize = true;
bx.register();

var sx as Fluid = VanillaFactory.createFluid("sx_fluid",0x8470ff);
sx.vaporize = true;
sx.register();

var tc as Fluid = VanillaFactory.createFluid("tc_fluid",0x8a2be2);
tc.vaporize = true;
tc.register();

var gz as Fluid = VanillaFactory.createFluid("gz_fluid",0xfffacd);
gz.vaporize = true;
gz.register();

var basic as Fluid = VanillaFactory.createFluid("basic_fluid",0xf0ffff);
basic.vaporize = true;
basic.register();

var dragon as Fluid = VanillaFactory.createFluid("dragon_fluid",0x1e90ff);
dragon.vaporize = true;
dragon.register();