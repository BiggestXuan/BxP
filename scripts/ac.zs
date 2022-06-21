#priority 3
import crafttweaker.item.IItemStack;

var rune = <bloodmagic:blood_rune>;
var stone = <minecraft:stone>;
var sb as IItemStack[]=[
    <bloodmagic:slate>,
    <bloodmagic:slate:1>,
    <bloodmagic:slate:2>,
    <bloodmagic:slate:3>,
    <bloodmagic:slate:4>
];

var amount as int[]=[
    1,2,4,8,16
];

recipes.remove(rune);

var i as int=0;
while(i<5){
    recipes.addShaped(rune*amount[i],
        [[stone,stone,stone],
        [stone,sb[i],stone],
        [stone,stone,stone]]
    );
    i+=1;
}

var fw as IItemStack[]=[
<bloodmagic:blood_rune:1>,
<bloodmagic:blood_rune:3>,
<bloodmagic:blood_rune:4>,
<bloodmagic:blood_rune:5>,
<bloodmagic:blood_rune:6>,
<bloodmagic:blood_rune:7>,
<bloodmagic:blood_rune:8>,
<bloodmagic:blood_rune:9>,
<bloodmagic:blood_rune:10>
];

var input as IItemStack[]=[
    <minecraft:sugar>,
    <minecraft:iron_nugget>,
    <minecraft:gold_nugget>,
    <minecraft:ender_pearl>,
    <minecraft:bucket>,
    <minecraft:glass_bottle>,
    <minecraft:ender_eye>,
    <minecraft:netherbrick>,
    <minecraft:redstone>
];

for i in fw{
    recipes.remove(i);
}

var j =0;
while(j<9){
    recipes.addShapeless(fw[j],[
        rune,input[j],input[j]
    ]);
    j+=1;
}