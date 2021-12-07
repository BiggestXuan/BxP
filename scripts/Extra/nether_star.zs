#priority 2

recipes.remove(<minecraft:nether_star>);

recipes.addShaped(<minecraft:nether_star>*2,
[[<minecraft:diamond_block>,<minecraft:gold_block>,<minecraft:diamond_block>],
[<minecraft:diamond_block>,<minecraft:gold_block>,<minecraft:diamond_block>],
[<minecraft:diamond_block>,<minecraft:gold_block>,<minecraft:diamond_block>]
]);

var shard = <progressivebosses:nether_star_shard>;

recipes.addShaped(<minecraft:nether_star>,[
    [shard,shard,shard],
    [shard,shard,shard],
    [shard,shard,shard]
]);