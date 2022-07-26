import scripts.aa.bx;

var book = <akashictome:tome>;

book.addTooltip(game.localize("bxp.tip.item.abyssbook"));

recipes.addShapeless(<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:bx_book"}),[
    bx[4],<minecraft:book>
]);