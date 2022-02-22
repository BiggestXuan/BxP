#loader contenttweaker

#modloaded tconstruct

#priority 100
#no_fix_recipe_book

import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.conarm.ArmorTraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.world.IWorld;

import crafttweaker.event.BlockHarvestDropsEvent;

val bxTrait1 = TraitBuilder.create("bx1");
bxTrait1.color = 0xffaadd;
bxTrait1.localizedName = "大轩之力";
bxTrait1.localizedDescription = "当目标生命小于自身三分之一时直接秒杀";
bxTrait1.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.health >= target.health*3){
        return 3.0f * target.maxHealth as float;
    }
    return originalDamage as float;
};
bxTrait1.register();

val bxTrait2 = TraitBuilder.create("bx2");
bxTrait2.color = 0xffaadd;
bxTrait2.localizedName = "大轩神力";
bxTrait2.localizedDescription = "当目标生命小于自身一点五倍时直接秒杀";
bxTrait2.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.health*1.5 >= target.health){
        return 3.0f * target.maxHealth as float;
    }
    return originalDamage as float;
};
bxTrait2.register();

val bxTrait3 = TraitBuilder.create("bx3");
bxTrait3.color = 0xffaadd;
bxTrait3.localizedName = "大轩魂力";
bxTrait3.localizedDescription = "当目标生命小于自身五倍时直接秒杀";
bxTrait3.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.health*5 >= target.health){
        return 3.0f * target.maxHealth as float;
    }
    return originalDamage as float;
};
bxTrait3.register();

val bxTrait4 = TraitBuilder.create("bx4");
bxTrait4.color = 0xffaadd;
bxTrait4.localizedName = "大轩yyds!";
bxTrait4.localizedDescription = "直接秒杀";
bxTrait4.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    return 3.0f * target.maxHealth as float;
};
bxTrait4.register();

val expTrait = TraitBuilder.create("exp_is_power");
expTrait.color = 0xffaadd;
expTrait.localizedName = "知识就是力量";
expTrait.localizedDescription = "等级越高，伤害越高（上限1000级）";
expTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var entity as IEntity = attacker;
    var player as IPlayer = entity;
    var mult as float = 1.0f;
    if(player.xp <1000){
        mult += ((player.xp as float/1000.0f) * 1.5f) as float;
    }
    else{
        mult = 1.5f;
    }
    return (mult * newDamage) as float;
};
expTrait.register();

/*
val voidTrait = TraitBuilder.create("void_mental_is_too_low");
voidTrait.color = 0xffaadd;
voidTrait.localizedName = "虚空金属弱爆了";
voidTrait.localizedDescription = "额外造成5%目标最大生命值伤害";
voidTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var mult as float = 0.05f * target.maxHealth as float;  
    print(target.maxHealth);
    print(0.05f * target.maxHealth);
    print(mult + newDamage);
    return (mult + newDamage) as float ;
};
voidTrait.register();
 */

val gengziTrait = TraitBuilder.create("gengzi_power");
gengziTrait.color = 0xffaadd;
gengziTrait.localizedName = "梗子之力";
gengziTrait.localizedDescription = "暴击伤害增加70%，普通攻击伤害降低90%";
gengziTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(isCritical){
        return (1.7f * newDamage) as float;
    }
    return (0.1f * newDamage) as float;
};
gengziTrait.register();

val anwuTrait = TraitBuilder.create("spooky_anwu");
anwuTrait.color = 0xffaadd;
anwuTrait.localizedName = "恶臭的暗无";
anwuTrait.localizedDescription = "对亡灵生物四倍伤害，其他生物削减50%伤害";
anwuTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(target.isUndead){
        return (4.0f * newDamage) as float;
    }
    else{
        return (0.5f * newDamage) as float;
    }
};
anwuTrait.register();

val lowTrait = TraitBuilder.create("low_kill_big");
lowTrait.color = 0xffaadd;
lowTrait.localizedName = "以小欺大";
lowTrait.localizedDescription = "对手生命与你差额越大，伤害越高（上限20倍）";
lowTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    val mult as float = 1.0f + ((target.health as float/ attacker.health as float)/25.0f) as float;
    if(mult >= 20.0f){
        return (20.0f* newDamage) as float;
    }
    else{
        return (mult as float * newDamage) as float;
    }
};
lowTrait.register();

val videoTrait = TraitBuilder.create("bx_video");
videoTrait.color = 0xffaadd;
videoTrait.localizedName = "大轩的视频";
videoTrait.localizedDescription = "当你和目标都在水中时，伤害翻倍";
videoTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.isInWater && target.isInWater){
        return (2.0f * newDamage) as float;
    }
    return newDamage as float;
};
videoTrait.register();

val finalTrait = TraitBuilder.create("final_you");
finalTrait.color = 0xffaadd;
finalTrait.localizedName = "终结你";
finalTrait.localizedDescription = "当亡灵生物着火时，直接秒杀";
finalTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(target.isUndead && target.isBurning){
        return 5.0f *target.maxHealth as float;
    }
    return newDamage;
};
finalTrait.register();

val abyssTrait = TraitBuilder.create("abyss_warp");
abyssTrait.color = 0xffaadd;
abyssTrait.localizedName = "深渊噩梦";
abyssTrait.localizedDescription = "在深渊维度中伤害更高";
abyssTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.dimension == 50){
        return (1.20f* newDamage) as float;
    }
    if(attacker.dimension == 51){
        return (1.50f * newDamage) as float;
    }
    if(attacker.dimension == 52){
        return (1.80f * newDamage) as float;
    }
    if(attacker.dimension == 53){
        return (2.0f * newDamage) as float;
    }
    return newDamage as float;
};
abyssTrait.register();

val bxkillTrait = TraitBuilder.create("bx_kill");
bxkillTrait.color = 0xffaadd;
bxkillTrait.localizedName = "轩秀才水友群";
bxkillTrait.localizedDescription = "对本整合包中水友实体造成五倍伤害";
bxkillTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(!isNull(target) && !isNull(target.definition) && !isNull(target.definition.name)){
        if(target.definition.name == "jaoxaono" || target.definition.name == "caigengzi" || target.definition.name == "yuluo" || target.definition.name == "tulye" || target.definition.name == "sdxhop"){
            return 5.0f * newDamage as float;
        }
        return newDamage;
    }
    return newDamage;
};
bxkillTrait.register();

var childTrait = TraitBuilder.create("child_kill");
childTrait.color = 0xffaadd;
childTrait.localizedName = "狂扁小朋友";
childTrait.localizedDescription = "对幼年生物造成伤害加倍";
childTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(target.isChild){
        return (2.0f * newDamage) as float;
    }
    return newDamage as float;
};
childTrait.register();

val healthTrait = TraitBuilder.create("health_kill");
healthTrait.color = 0xffaadd;
healthTrait.localizedName = "我超勇的";
healthTrait.localizedDescription = "生命越高，伤害越高（上限1000）";
healthTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var health as float = attacker.health;
    if(health >=300){
        return (1.50f * newDamage) as float;
    }
    else{
        return (1.50f * (health as float/ 1000.0f) * newDamage) as float;
    }
};
healthTrait.register();

val warpattackTrait = TraitBuilder.create("warp_attack");
warpattackTrait.color = 0xffaadd;
warpattackTrait.localizedName = "万恶之源";
warpattackTrait.localizedDescription = "扭曲越高，伤害越高";
warpattackTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var warp as int = 0;
    var player as IPlayer = attacker;
    warp = player.warpNormal + player.warpTemporary + player.warpPermanent;
    if (warp >=100 ){
        return (1.75f * newDamage) as float;
    }
    else{
        return (1.75f * (warp as float / 100.0f) * newDamage) as float;
    }
};
warpattackTrait.register();

val fireWindTrait = TraitBuilder.create("fire_trait");
fireWindTrait.color = 0xffaadd;
fireWindTrait.localizedName = "火风";
fireWindTrait.localizedDescription = "对燃烧的实体造成三倍伤害";
fireWindTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(isNull(target)) return newDamage;
    if(isNull(target.definition)) return newDamage;
    if(isNull(target.definition.id)) return newDamage;
    if(target.isBurning){
        return newDamage*3.0f;
    }
    return newDamage;
};
fireWindTrait.register();

val eyeWindTrait = TraitBuilder.create("eye_trait");
eyeWindTrait.color = 0xffaadd;
eyeWindTrait.localizedName = "岩神的注视";
eyeWindTrait.localizedDescription = "对所有boss造成5倍伤害";
eyeWindTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(target.isBoss){
        return newDamage * 5.0f;
    }
    return newDamage;
};
eyeWindTrait.register();

val windBlessTrait = TraitBuilder.create("bless_trait");
windBlessTrait.color = 0xffaadd;
windBlessTrait.localizedName = "水神的祝福";
windBlessTrait.localizedDescription = "对所有水友实体造成3倍伤害";
windBlessTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(!isNull(target) && !isNull(target.definition) && !isNull(target.definition.name)){
        if(target.definition.name == "jaoxaono" || target.definition.name == "caigengzi" || target.definition.name == "yuluo" || target.definition.name == "tulye" || target.definition.name == "sdxhop"){
            return 3.0f *newDamage;
        }
        return newDamage;}
        return newDamage;
};
windBlessTrait.register();

val godEyeTrait = TraitBuilder.create("god_eye");
godEyeTrait.color = 0xffaadd;
godEyeTrait.localizedName = "冰神的祝福";
godEyeTrait.localizedDescription = "每次攻击后恢复饥饿值";
godEyeTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    var player as IPlayer = attacker;
    server.commandManager.executeCommand(server,"effect "+player.name+" minecraft:saturation 5 255");
};
godEyeTrait.register();

val godAngryTrait = TraitBuilder.create("god_angry");
godAngryTrait.color = 0xffaadd;
godAngryTrait.localizedName = "风神之怒";
godAngryTrait.localizedDescription = "生命越高伤害越低，生命越低伤害越高";
godAngryTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var healthRate as float = attacker.health as float / attacker.maxHealth;
    if(healthRate ==1.0f){
        return 0.5f * newDamage as float;
    }
    if(healthRate >= 0.8f){
        return (1.0f - healthRate) * 5.0f * newDamage as float;
    }
    if(healthRate >= 0.3f){
        return (1.0f - healthRate) * 2.0f * newDamage as float;
    }
    else{
        return 2.0f * newDamage as float;
    }
};
godAngryTrait.register();
/*
val diamondTrait = TraitBuilder.create("diamond_buff");
diamondTrait.color = 0xffaadd;
diamondTrait.localizedName = "一闪一闪亮晶晶";
diamondTrait.localizedDescription = "挖掘钻石矿石恒定时运V，可与其他时运叠加";
diamondTrait.onBlockHarvestDrops = function(trait, tool, event){
    var block as IBlock = event.block;
    var player as IPlayer = event.player;
    if(isNull(player) || isNull(block) || isNull(block.definition) || isNull(block.definition.id)) return;
    if(event.isPlayer){
        if(block.definition.id == "minecraft:diamond_ore"){
        event.addItem(<minecraft:diamond> %50);
        event.addItem(<minecraft:diamond> %50);
        event.addItem(<minecraft:diamond> %50);
        event.addItem(<minecraft:diamond> %50);
        event.addItem(<minecraft:diamond> %50);
        if(event.fortuneLevel == 0){
            return;
        }
        else{
            var chance as float = 0.7f;
            if(event.fortuneLevel >=10){
                chance = 0.4f;
            }
            else{
                chance = 0.7f - 0.3f * (event.fortuneLevel as float / 10.0f);
            }
            for i in 1 .. event.fortuneLevel+1{
                event.addItem(<minecraft:diamond> % chance);
            }
        }
    }}
};
diamondTrait.register();
*/
// armor trait

val abxTrait1 = ArmorTraitBuilder.create("abx1");
abxTrait1.color = 0xffaadd;
abxTrait1.localizedName = "大轩的保护";
abxTrait1.localizedDescription = "所有伤害削减0.6%";
abxTrait1.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    return (0.994f * newDamage) as float; 
};
abxTrait1.register();

val abxTrait2 = ArmorTraitBuilder.create("abx2");
abxTrait2.color = 0xffaadd;
abxTrait2.localizedName = "大轩的庇护";
abxTrait2.localizedDescription = "所有伤害削减1.5%";
abxTrait2.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    return (0.985f * newDamage) as float; 
};
abxTrait2.register();

val abxTrait3 = ArmorTraitBuilder.create("abx3");
abxTrait3.color = 0xffaadd;
abxTrait3.localizedName = "大轩的神护";
abxTrait3.localizedDescription = "所有伤害削减4%";
abxTrait3.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    return (0.96f * newDamage) as float; 
};
abxTrait3.register();

val abxTrait4 = ArmorTraitBuilder.create("abx4");
abxTrait4.color = 0xffaadd;
abxTrait4.localizedName = "大轩的拥抱";
abxTrait4.localizedDescription = "所有伤害全部削减";
abxTrait4.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    return 0.0f;
};
abxTrait4.register();

val aexpTrait = ArmorTraitBuilder.create("aexp");
aexpTrait.color = 0xffaadd;
aexpTrait.localizedName = "知识就是保护";
aexpTrait.localizedDescription = "等级越高，减免伤害越高（最高1000级）";
aexpTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)){
        return damage as float;
    }
    else{
        if(player.xp >=1000){
            return (0.85f * newDamage) as float;
        }
        else{
            return (0.85f * ((player.xp as float) / 1000.0f) * newDamage) as float;
        }
    }
};
aexpTrait.register();

val aexplodeTrait1 = ArmorTraitBuilder.create("aexplode1");
aexplodeTrait1.color = 0xffaadd;
aexplodeTrait1.localizedName = "爆炸神盾";
aexplodeTrait1.localizedDescription = "爆炸伤害减少三分之一";
aexplodeTrait1.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(source)){
        return damage as float;
    }
    else{
        if(source.explosion){
            return (0.33f * damage) as float;
        }
        else{
            return damage as float;
        }
    }
};
aexplodeTrait1.register();

val aexplodeTrait2 = ArmorTraitBuilder.create("aexplode2");
aexplodeTrait2.color = 0xffaadd;
aexplodeTrait2.localizedName = "爆炸神盾II";
aexplodeTrait2.localizedDescription = "爆炸伤害减少三分之二";
aexplodeTrait2.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(source)){
        return damage as float;
    }
    else{
        if(source.explosion){
            return (0.67f * damage) as float;
        }
        else{
            return damage as float;
        }
    }
};
aexplodeTrait2.register();

val aexplodeTrait3 = ArmorTraitBuilder.create("aexplode3");
aexplodeTrait3.color = 0xffaadd;
aexplodeTrait3.localizedName = "爆炸神盾III";
aexplodeTrait3.localizedDescription = "免疫爆炸伤害";
aexplodeTrait3.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(source)){
        return damage as float;
    }
    else{
        if(source.explosion){
            return 0.0f;
        }
        else{
            return damage as float;
        }
    }
};
aexplodeTrait3.register();

val abossTrait1 = ArmorTraitBuilder.create("aboss1");
abossTrait1.color = 0xffaadd;
abossTrait1.localizedName = "BOSS庇护";
abossTrait1.localizedDescription = "boss造成伤害减免5%";
abossTrait1.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isBoss){
                return (0.95f * damage) as float;
            }
        }
        return damage as float;
    }
    return damage as float;
};
abossTrait1.register();

val abossTrait2 = ArmorTraitBuilder.create("aboss2");
abossTrait2.color = 0xffaadd;
abossTrait2.localizedName = "BOSS庇护II";
abossTrait2.localizedDescription = "boss造成伤害减免12%";
abossTrait2.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isBoss){
                return (0.88f * damage) as float;
            }
        }
        return damage as float;
    }
    return damage as float;
};
abossTrait2.register();

val abossTrait3 = ArmorTraitBuilder.create("aboss3");
abossTrait3.color = 0xffaadd;
abossTrait3.localizedName = "BOSS庇护III";
abossTrait3.localizedDescription = "boss造成伤害减免18%";
abossTrait3.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isBoss){
                return (0.82f * damage) as float;
            }
        }
        return damage as float;
    }
    return damage as float;
};
abossTrait3.register();

val abossTrait4 = ArmorTraitBuilder.create("aboss4");
abossTrait4.color = 0xffaadd;
abossTrait4.localizedName = "BOSS庇护IV";
abossTrait4.localizedDescription = "boss造成伤害减免25%";
abossTrait4.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isBoss){
                return (0.75f * damage) as float;
            }
        }
        return damage as float;
    }
    return damage as float;
};
abossTrait4.register();

val zombieTrait = ArmorTraitBuilder.create("ai_am_zombie");
zombieTrait.color = 0xffaadd;
zombieTrait.localizedName = "我是僵尸";
zombieTrait.localizedDescription = "免疫亡灵生物伤害，其他伤害加倍";
zombieTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isUndead){
                return 0.0f;
            }
            return (2.0f * damage) as float;
        }
        return damage as float;
    }
    return damage as float;
};
zombieTrait.register();

val achildTrait = ArmorTraitBuilder.create("achild");
achildTrait.color = 0xffaadd;
achildTrait.localizedName = "我怕熊孩子";
achildTrait.localizedDescription = "幼年生物造成伤害加倍";
achildTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isChild){
                return (2.0f * damage) as float;
            }
        }
        return damage as float;
    }
    return damage as float;
};
achildTrait.register();

val awarpTrait = ArmorTraitBuilder.create("awarp");
awarpTrait.color = 0xffaadd;
awarpTrait.localizedName = "扭曲拥护";
awarpTrait.localizedDescription = "扭曲越高，防御越高";
awarpTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        var warp as int = 0;
        var player as IPlayer = player;
        warp = player.warpNormal + player.warpTemporary + player.warpPermanent;
        if(warp >100){
            return (0.85f * newDamage) as float;
        }
        else{
            return (0.85f * (warp as float /100.0f) * newDamage) as float;
        }
    }
    return newDamage;
};
awarpTrait.register();

val ahealthTrait = ArmorTraitBuilder.create("ahealth");
ahealthTrait.color = 0xffaadd;
ahealthTrait.localizedName = "绝弟求生";
ahealthTrait.localizedDescription = "生命越低，护甲越高";
ahealthTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    var rate as float = 1.0f;
    var healthRate as float = (player.health as float / player.maxHealth as float);
    if (isNull(player)){
        return newDamage;
    }
    if(healthRate <= 0.2f){
        return (0.6f * newDamage) as float; 
    }
    else{
        return (0.6f * healthRate as float * newDamage) as float;
    }
};
ahealthTrait.register();

val awindProtectTrait = ArmorTraitBuilder.create("awindp");
awindProtectTrait.color = 0xffaadd;
awindProtectTrait.localizedName = "风神的庇护";
awindProtectTrait.localizedDescription = "若远程伤害能对你造成伤害，那么它不能造成伤害";
awindProtectTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)) return damage;
    if(isNull(source.getTrueSource())) return damage;
    if(source.projectile){
        return 0.0f;
    }
    return damage;
};
awindProtectTrait.register();

val awindProtectaTrait = ArmorTraitBuilder.create("awindpa");
awindProtectaTrait.color = 0xffaadd;
awindProtectaTrait.localizedName = "风神的衬托";
awindProtectaTrait.localizedDescription = "受伤时恢复所有饥饿值";
awindProtectaTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)) return damage;
    if(isNull(source.getTrueSource())) return damage;
    server.commandManager.executeCommand(server,"effect "+player.name+" minecraft:saturation 5 255");
    return damage;
};
awindProtectaTrait.register();