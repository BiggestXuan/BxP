#priority 33
import scripts.aa.bx;
import scripts.API.config.modifyMekMartixRecipe;

if(modifyMekMartixRecipe){
recipes.remove(<mekanism:basicblock2:3>);
recipes.remove(<mekanism:basicblock2:4>);

var p =<mekanism:energytablet>.withTag({mekData: {energyStored: 0.0}});
var b = <bxp:unbxblock>;
var a = <mekanism:controlcircuit>;

recipes.addShaped(<mekanism:basicblock2:3>.withTag({tier: 0}),[
    [a,p,a],
    [p,b,p],
    [a,p,a]
]);

recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 0}),[
    [p,a,p],
    [a,b,a],
    [p,a,p]
]);
}
