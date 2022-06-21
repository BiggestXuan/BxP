#priority 4
import crafttweaker.player.IPlayer;

function func_7441(player as IPlayer) as bool{
    if(player.hasGameStage("test1")) return true;
    return false;
}