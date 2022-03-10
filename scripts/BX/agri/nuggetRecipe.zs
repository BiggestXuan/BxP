import crafttweaker.item.IItemStack;

var recipe as IItemStack[IItemStack]={
<additions:bxloveu-blood_diamond_nugget> : <bloodarsenal:blood_diamond:3>,
<additions:bxloveu-dragon_egg_nugget> : <minecraft:dragon_egg>,
<additions:bxloveu-dragon_heart_nugget> : <draconicevolution:dragon_heart>,
<additions:bxloveu-enchbx_nugget> : <additions:bxloveu-bx_enchingot>,
<additions:bxloveu-gold_caigengzi_nugget> : <additions:bxloveu-gold_gengzi>,
<additions:bxloveu-ouhuang_nugget> :<additions:bxloveu-ouhuang_ingot>,
<additions:bxloveu-oujin_nugget>:<additions:bxloveu-ou_gold>
};

for i,j in recipe{
    recipes.addShapeless(j,[i,i,i,i,i,i,i,i,i]);
}