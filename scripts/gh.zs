import scripts.aa.bx;

recipes.addShaped(<additions:bxloveu-seed_6>,[
    [null,<additions:bxloveu-final_ess>,null],
    [<additions:bxloveu-final_ess>,<mysticalagriculture:crafting:21>,<additions:bxloveu-final_ess>],
    [null,<additions:bxloveu-final_ess>,null]
]);

recipes.addShaped(<additions:bxloveu-seed_7>,[
    [bx[10],bx[5],bx[10]],
    [bx[5],<additions:bxloveu-seed_6>,bx[5]],
    [bx[10],bx[5],bx[10]]
]);

val a =<thaumadditions:mithrillium_ingot>;
val b =<thaumadditions:adaminite_ingot>;

recipes.addShaped(<additions:bxloveu-seed_8>,[
    [a,b,a],
    [b,<additions:bxloveu-seed_7>,b],
    [a,b,a]
]);

recipes.addShaped(<additions:bxloveu-seed_9>,[
    [bx[6],bx[6],bx[6]],
    [bx[6],<additions:bxloveu-seed_8>,bx[6]],
    [bx[6],bx[6],bx[6]]
]);

val c =<tconevo:metal:10>;
recipes.addShaped(<additions:bxloveu-seed_10>,[
    [c,bx[19],c],
    [bx[19],<additions:bxloveu-seed_9>,bx[19]],
    [c,bx[19],c]
]);