#priority 10
import mods.thaumcraft.Infusion;
import scripts.aa.bx;

var ch =<avaritia:resource:5>;
var ingot=<avaritia:resource:6>;
var super=<additions:bxloveu-bx_superingot>;

Infusion.registerRecipe(
    "super_bx",
    "",
    super,
    0.3,
    [<aspect:aer>*100,<aspect:terra>*100,<aspect:ordo>*100,<aspect:ignis>*100,<aspect:perditio>*100,<aspect:aqua>*100,
    <aspect:vacuos>*100,<aspect:lux>*100,<aspect:motus>*100,<aspect:gelum>*100,<aspect:vitreus>*100,<aspect:metallum>*100,
    <aspect:mortuus>*100,<aspect:victus>*100,<aspect:potentia>*100,<aspect:permutatio>*100,<aspect:auram>*100,
    <aspect:alkimia>*100,<aspect:vitium>*100,<aspect:tenebrae>*100,<aspect:alienis>*100,<aspect:volatus>*100,<aspect:herba>*100,
    <aspect:humanus>*100,<aspect:machina>*100,<aspect:fabrico>*100,<aspect:exanimis>*100],
    <additions:bxloveu-creative_star>,
    [ingot,ingot,ingot,ingot]
);

Infusion.registerRecipe(
    "super_bx2",
    "",
    super,
    0.3,
    [<aspect:biggestxuan>*10000],
    <additions:bxloveu-creative_star>,
    [ingot,ingot,ingot,ingot,bx[4]]
);

mods.jei.JEI.addDescription(super,"这个可能有点肝，不过注魔风险较低\nJEI配方二里面有部分源质需求没写完，左侧需要六种基础源质，右侧还需要fabrico和exanimis源质");

