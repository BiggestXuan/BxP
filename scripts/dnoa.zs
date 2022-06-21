#priority 2
import crafttweaker.item.IItemStack;

var asblock as IItemStack[]=[
    <gugu-utils:starlightinputhatch:2>,
    <gugu-utils:starlightinputhatch:1>,
    <gugu-utils:starlightinputhatch>
];

for i in asblock{
    i.addTooltip(format.green("该方块采集星能约有2分钟延迟"));
    i.addTooltip(format.green("星座共鸣必须使用共鸣水晶与其连接"));
    i.addTooltip(format.green("若存在多个，那么所有输入仓星座必须相同"));
}

<gugu-utils:aspecthatch>.addTooltip(format.green("上面放置源质注入装置生效"));
<gugu-utils:aspecthatch>.addTooltip(format.red("放置多个方块不会增加抽取源质速度，且会多倍消耗源质！"));

<gugu-utils:sparkmanahatch>.addTooltip(format.green("使用火花与魔力池连接或使用魔力发射器"));
<gugu-utils:sparkmanahatch>.addTooltip(format.green("需要扩散或聚集的火花升级才能与魔力池成功连接"));