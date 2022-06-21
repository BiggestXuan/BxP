#priority 51
import crafttweaker.player.IPlayer;

function func_2832(player as IPlayer,info as string){
    player.sendRichTextMessage(format.red(info));
}