#priority 51
import crafttweaker.text.ITextComponent;
import crafttweaker.player.IPlayer;

function func_3368(p as IPlayer,i as string[]){
    for s in i {
        p.sendRichTextMessage(ITextComponent.fromTranslation(s));
    }
}
