#priority 64

function func_3367(name as string) as string{
    if(name == "bx") return game.localize("bxp.tip.power");
    if(name == "tc") return game.localize("bxp.tip.power1");
    if(name == "dragon") return game.localize("bxp.tip.power2");
    if(name == "gz") return game.localize("bxp.tip.power3");
    if(name == "sx") return game.localize("bxp.tip.power4");
    if(name == "basic") return game.localize("bxp.tip.power5");
    return "";
}