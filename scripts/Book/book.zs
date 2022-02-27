import scripts.BX.item.bx;

var book = <akashictome:tome>;

book.addTooltip(format.red("请勿将深渊国度的书放进去，否则后果自负！"));

recipes.addShapeless(<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:bx_book"}),[
    bx[4],<minecraft:book>
]);