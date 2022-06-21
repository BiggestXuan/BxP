#priority 4
import crafttweaker.player.IPlayer;

function func_3951(player as IPlayer) as bool{
    if(player.creative) return true;
    return false;
}