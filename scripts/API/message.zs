#priority 50
import crafttweaker.player.IPlayer;
import scripts.vcod.func_3368;
import scripts.bu.func_2832;

function sendMessageToPlayer(player as IPlayer,message as string,color as int){
    if(color==0){
        func_3368(player,message); //Green
    }
    else func_2832(player,message);  //Red
}