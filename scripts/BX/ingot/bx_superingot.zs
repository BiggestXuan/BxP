import mods.thaumcraft.Infusion;

var ch =<avaritia:resource:5>;
var ingot=<avaritia:resource:6>;
var super=<additions:bxloveu-bx_superingot>;

Infusion.registerRecipe(
    "super_bx",
    "",
    super,
    0.3,
    [<aspect:aer>*25,<aspect:terra>*25,<aspect:ordo>*25,<aspect:ignis>*25,<aspect:perditio>*25,<aspect:aqua>*25,
    <aspect:vacuos>*25,<aspect:lux>*25,<aspect:motus>*25,<aspect:gelum>*25,<aspect:vitreus>*25,<aspect:metallum>*25,
    <aspect:mortuus>*25,<aspect:victus>*25,<aspect:potentia>*25,<aspect:permutatio>*25,<aspect:auram>*25,
    <aspect:alkimia>*25,<aspect:vitium>*25,<aspect:tenebrae>*25,<aspect:alienis>*25,<aspect:volatus>*25,<aspect:herba>*25,
    <aspect:humanus>*25,<aspect:machina>*25,<aspect:fabrico>*25,<aspect:exanimis>*25],
    ch,
    [ingot,ingot,ingot,ingot]
);

mods.jei.JEI.addDescription(super,"这个可能有点肝，不过注魔风险较低\nJEI里面有部分源质需求没写完，左侧需要六种基础源质，右侧还需要fabrico和exanimis源质");