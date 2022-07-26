#ikwid

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerAttackEntityEvent;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.item.IItemStack;

import mods.thaumcraft.Infusion;

var sword = <additions:bxloveu-wang_sword>;
var d =<minecraft:diamond_sword>;

sword.addTooltip(format.green(game.localize("bxp.tip.item.wang")));

Infusion.registerRecipe("wang_sword","",sword,
6,
[<aspect:alkimia>*200],
<additions:bxloveu-bx_ingot>,
[d,d,d,d,d,d,d,d]
);

events.onPlayerAttackEntity(function(event as PlayerAttackEntityEvent){
    var player as IPlayer = event.player;
    var target as IEntity = event.target;
    var item as IItemStack = player.currentItem;
    var PlayerHealth = player.health;
    var Mob as IEntityLivingBase = target;
    var MobHealth = Mob.health;
    if(isNull(target)) return;
    if(isNull(target.definition)) return;
    if(isNull(target.definition.id)) return;
    if(isNull(item)) return;
    if(PlayerHealth <=2 || MobHealth <=2) return;
    if(item.definition.id == "additions:bxloveu-wang_sword"){
        Mob.health *=0.95;
        if(!player.creative) player.health *=0.8;
        return;
    }
    else return;
});