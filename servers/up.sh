#!/bin/bash
screens=`screen -ls`

#static
if [[ $screens == *mc_static* ]] 
    then 
        echo mc_static is already running 
    else 
        echo starting mc_static 
        cd static
        screen -dmS mc_static /home/minecraft/java7/bin/java -Xmx1024M -Xms1024M -jar craftbukkit.jar
        cd .. 
fi 

#fluid
if [[ $screens == *mc_fluid* ]] 
    then 
        echo mc_fluid is already running 
    else 
        echo starting mc_fluid 
        cd fluid
        screen -dmS mc_fluid /home/minecraft/java7/bin/java -Xmx1024M -Xms1024M -jar craftbukkit.jar
        cd .. 
fi 

#hardcore
if [[ $screens == *mc_hardcore* ]] 
    then 
        echo mc_hardcore is already running 
    else 
        echo starting mc_hardcore 
        cd hardcore
        screen -dmS mc_hardcore /home/minecraft/java7/bin/java -Xmx1024M -Xms1024M -jar craftbukkit.jar
        cd .. 
fi 


#proxy
if [[ $screens == *mc_proxy* ]] 
    then 
        echo mc_proxy is already running 
    else 
        echo starting mc_proxy 
        cd proxy
        screen -dmS mc_proxy /home/minecraft/java7/bin/java -Xmx512M -Xms32M -jar BungeeCord.jar
        cd .. 
fi 

