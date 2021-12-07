import scripts.BX.item.bx;
import crafttweaker.item.IItemStack;
import mods.avaritia.ExtremeCrafting;

var time =<projecte:item.pe_time_watch>;
recipes.remove(time);

ExtremeCrafting.addShaped("time",time,[
    [bx[6],bx[6],bx[6],bx[6],bx[6],bx[6],bx[6],bx[6],bx[6]],
    [bx[6],null,null,null,null,null,null,null,bx[6]],
    [bx[6],null,null,null,null,null,null,null,bx[6]],
    [bx[6],null,null,null,bx[7],null,null,null,bx[6]],
    [bx[6],null,null,null,bx[7],null,null,null,bx[6]],
    [bx[6],null,null,null,bx[7],null,null,null,bx[6]],
    [bx[6],null,null,null,null,null,null,null,bx[6]],
    [bx[6],null,null,null,null,null,null,null,bx[6]],
    [bx[6],bx[6],bx[6],bx[6],bx[6],bx[6],bx[6],bx[6],bx[6]],
]);