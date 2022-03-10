import crafttweaker.item.IItemStack;
import scripts.BX.item.bx;

function getCraftingSeed(a as int) as IItemStack{
    if(a==1){
        return <mysticalagriculture:crafting:17>;
    }
    if(a==2){
        return <mysticalagriculture:crafting:18>;
    }
    if(a==3){
        return <mysticalagriculture:crafting:19>;
    }
    if(a==4){
        return <mysticalagriculture:crafting:20>;
    }
    if(a==5){
        return <mysticalagriculture:crafting:21>;
    }
    if(a==6){
        return <additions:bxloveu-seed_6>;
    }
    if(a==7){
        return <additions:bxloveu-seed_7>;
    }
    if(a==8){
        return <additions:bxloveu-seed_8>;
    }
    if(a==9){
        return <additions:bxloveu-seed_9>;
    }
    if(a==10){
        return <additions:bxloveu-seed_10>;
    }
    return <minecraft:stone>;
}

function seedCrafting(a as IItemStack[], b as IItemStack){
    recipes.addShaped(a[0],[
        [a[1],a[1],a[1]],
        [a[1],b,a[1]],
        [a[1],a[1],a[1]]
    ]);
}

seedCrafting([<additions:bxloveu-unbx_seed>,bx[4]],getCraftingSeed(3));
seedCrafting([<additions:bxloveu-bx_seed>,bx[5]],getCraftingSeed(7));
seedCrafting([<additions:bxloveu-blood_diamond_seed>,<bloodarsenal:blood_diamond:3>],getCraftingSeed(8));
seedCrafting([<additions:bxloveu-gold_caigengzi_seed>,bx[13]],getCraftingSeed(8));
seedCrafting([<additions:bxloveu-ench_ingot_seed>,bx[6]],getCraftingSeed(10));
seedCrafting([<additions:bxloveu-mith_seed>,<thaumadditions:mithrillium_ingot>],getCraftingSeed(7));
seedCrafting([<additions:bxloveu-ouhuang_seed>,bx[19]],getCraftingSeed(10));
seedCrafting([<additions:bxloveu-oujin_seed>,bx[11]],getCraftingSeed(8));
seedCrafting([<additions:bxloveu-dragon_heart_seed>,<draconicevolution:dragon_heart>],getCraftingSeed(7));
seedCrafting([<additions:bxloveu-adamin_seed>,<thaumadditions:adaminite_ingot>],getCraftingSeed(9));
seedCrafting([<additions:bxloveu-dragon_egg_seed>,<minecraft:dragon_egg>],getCraftingSeed(7));
seedCrafting([<additions:bxloveu-xuanjing_seed>,<additions:bxloveu-bx_goldingot>],getCraftingSeed(6));
seedCrafting([<additions:bxloveu-nether_star_seed>,<minecraft:nether_star>],getCraftingSeed(6));