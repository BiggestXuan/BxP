#priority 60
import crafttweaker.player.IPlayer;
import scripts.kko.itemClass;
import scripts.rt.func_3367;

function func_4036(object as itemClass){
    object.item.addTooltip(format.green(func_3367(object.kind)+object.power*12+"（"+min(object.power,3200000)+"）"));
}

function func_5420(p as IPlayer,s as string){
    p.sendChat(game.localize(s));
}