#priority 15
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.text.ITextComponent;
import mods.zenutils.DelayManager;

import scripts.yics.func_2698;

var e = <minecraft:ender_pearl>;

recipes.addShaped(<additions:bxloveu-xk_ender_bed>,[
    [e,e,e],
    [e,<ore:bed>,e],
    [e,e,e]
]);

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
    var player as IPlayer = event.player;
    var item as IItemStack = player.currentItem;
    if(isNull(item) || isNull(item.definition)||isNull(item.definition.id)) return;
    if(item.definition.id == "additions:bxloveu-xk_ender_bed"){
        server.commandManager.executeCommand(server,"clear "+player.name+" additions:bxloveu-xk_ender_bed 0 1");
        func_2698(player);
        server.broadcastMessage(ITextComponent.fromTranslation("bxp.event.timechange"));
        DelayManager.addDelayWork(function() {
        server.commandManager.executeCommand(server,"time set day");
    }, 10 * 20);
    }
    return;
});