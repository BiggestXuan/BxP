import moretweaker.draconicevolution.FusionCrafting;
import scripts.BX.item.bx;
import scripts.BX.caigengzi.re_caigengzi.dragon;


var table =<projecte:transmutation_table>;
recipes.remove(table);
FusionCrafting.add(table,bx[6],FusionCrafting.DRACONIC,1000000000,[
    bx[14],bx[16]
]);