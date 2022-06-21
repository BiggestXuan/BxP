#priority 59
import crafttweaker.liquid.ILiquidStack;

function func_5858(name as string) as ILiquidStack{
    if(name == "bx") return <liquid:bx_fluid>;
    if(name == "tc") return <liquid:tc_fluid>;
    if(name == "dragon") return <liquid:dragon_fluid>;
    if(name == "gz") return <liquid:gz_fluid>;
    if(name == "sx") return <liquid:sx_fluid>;
    if(name == "basic") return <liquid:basic_fluid>;
    return <liquid:water>;
}