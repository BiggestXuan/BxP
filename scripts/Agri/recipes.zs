recipes.remove(<mysticalagriculture:seed_reprocessor>);

recipes.remove(<mysticalagriculture:crafting:1>);
recipes.remove(<mysticalagriculture:crafting:2>);
recipes.remove(<mysticalagriculture:crafting:3>);
recipes.remove(<mysticalagriculture:crafting:4>);

//为什么能这么傻，为啥不用循环写
//2021.9.17吐槽

//1-->4

recipes.addShapeless(<mysticalagriculture:crafting:1>*3,[
<mysticalagriculture:crafting:2>
]);

recipes.addShapeless(<mysticalagriculture:crafting:2>*3,[
<mysticalagriculture:crafting:3>
]);

recipes.addShapeless(<mysticalagriculture:crafting:3>*3,[
<mysticalagriculture:crafting:4>
]);

recipes.addShapeless(<mysticalagriculture:crafting:4>*3,[
<additions:bxloveu-final_ess>
]);

//6-->1

recipes.addShapeless(<mysticalagriculture:crafting:1>,[
<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,
<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>,
<mysticalagriculture:crafting>,<mysticalagriculture:crafting>
]);

recipes.addShapeless(<mysticalagriculture:crafting:2>,[
<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,
<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>,
<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:1>
]);

recipes.addShapeless(<mysticalagriculture:crafting:3>,[
<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,
<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>,
<mysticalagriculture:crafting:2>,<mysticalagriculture:crafting:2>
]);

recipes.addShapeless(<mysticalagriculture:crafting:4>,[
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,
<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>
]);

recipes.addShapeless(<additions:bxloveu-final_ess>,[
<mysticalagriculture:crafting:4>,<mysticalagriculture:crafting:4>,<mysticalagriculture:crafting:4>,
<mysticalagriculture:crafting:4>,<mysticalagriculture:crafting:4>,<mysticalagriculture:crafting:4>,
<mysticalagriculture:crafting:4>,<mysticalagriculture:crafting:4>
]);