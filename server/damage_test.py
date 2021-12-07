armor=80
tough=20

attack=300

out=attack*(1-((min(max((armor/5),(armor-(attack/((8+tough)/4)))),20))/25))

protection=0
fire_protection=0
blast_protection=0
projectile_protection=0
falling_protection=0

list=[[protection,"保护"],[fire_protection,"火焰保护"],[blast_protection,"爆炸保护"],[projectile_protection,"弹射物保护"],
      [falling_protection,"摔落保护"]]

get=[protection,fire_protection,blast_protection,projectile_protection,falling_protection]
if max(get)>20:
    print("\033[1;31m错误：单个保护总等级不超过20\033[0m")
    exit()

damage=out*(1-min(20,protection)/25)
fire_damage=out*(1-min(20,(protection+2*fire_protection))/25)
blast_damage=out*(1-min(20,(protection+2*blast_protection))/25)
projectile_damage=out*(1-min(20,(protection+2*projectile_protection))/25)
falling_damage=attack*(1-min(20,(protection+3*falling_protection))/25)

print("当护甲值为{},韧性为{},伤害为{}".format(armor,tough,attack))
i=0
if (protection+fire_protection+blast_protection+projectile_protection+falling_protection)==0:
    print("没有附魔")
else:
    print("附魔有:")
while i<=4:
    if list[i][0]!=0:
        print(list[i][1],list[i][0])
    i+=1
print("受到普通伤害为{},受到火焰伤害为{},受到爆炸伤害为{},受到弹射物伤害为{},受到摔落伤害为{}".format(round(damage,2),round(fire_damage,2)
                                                            ,round(blast_damage,2),round(projectile_damage,2),
                                                                  round(falling_damage,2)))
