import random

xiangshushumiao=int(159865/60)
Biggest_Anwu=int(139815/60)
LAMB_Kisara=int(102112/60)
Biggest_Xuan=int(91469/60)
Abunana=int(58646/60)
Chara_SS=int(56144/60)
caigengzi=int(50576/60)
Jaoxaono=int(39672/60)
MINE_TNT=int(27087/60)
yu_luo1=int(14985/60)
ttcpr99=int(13451/60)
Bu_Bai=int(7626/60)
Ling_Day=int(4043/60)
SiuRana_Lin=int(3457/60)

db=[["xiangshushumiao",xiangshushumiao],["Biggest_Anwu",Biggest_Anwu],["LAMB_Kisara",LAMB_Kisara],["Biggest_Xuan",
    Biggest_Xuan],["Abunana",Abunana],["Chara_SS",Chara_SS],["caigengzi",caigengzi],["Jaoxaono",Jaoxaono],
    ["MINE_TNT",MINE_TNT],["yu_luo1",yu_luo1],["ttcpr99",ttcpr99],["Bu_Bai",Bu_Bai],["Ling_Day",Ling_Day],
    ["SiuRana_Lin",SiuRana_Lin]
    ]
list=[]
count=1

while count<=100:
    ls=random.randint(0,xiangshushumiao)
    list.append(ls)
    count+=1

for i in db:
    if i[1] in list:
        print("头衔获得者是：{}".format(i[0]))
        break
