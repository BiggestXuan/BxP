#priority 60
import scripts.kko.itemClass;
import scripts.rt.func_3367;

function func_4036(object as itemClass){
    object.item.addTooltip(format.green(func_3367(object.kind)+object.power*24+"（"+min(object.power,32000)+"）"));
}
