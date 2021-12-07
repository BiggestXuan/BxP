import moretweaker.draconicevolution.FusionCrafting;

var tnt=<minecraft:tnt>;

FusionCrafting.add(
    <additions:bxloveu-mt>,
    <tconevo:metal:10>,
    FusionCrafting.CHAOTIC,
    2000000000,
    [
    tnt,tnt,tnt,tnt,tnt,tnt,tnt,tnt
    ]
);

<additions:bxloveu-mt>.addTooltip(format.red("右键会召唤立即爆炸的TNT！"));
<additions:bxloveu-mt>.addTooltip("按住SHIFT显示更多");
<additions:bxloveu-mt>.addShiftTooltip("本来是具有反应堆爆炸威力的，但是在改版把他降低了\n但是一直右键还是可以上天");