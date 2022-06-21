import crafttweaker.event.PlayerChangedDimensionEvent;

import crafttweaker.player.IPlayer;

import scripts.API.config.noDamageWhenChangeDimension;

events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent){
    if(!noDamageWhenChangeDimension) return;
    var player as IPlayer = event.player;
    player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 254, false, false));
    player.addPotionEffect(<potion:minecraft:fire_resistance>.makePotionEffect(200, 254, false, false));
});