## disables grace period
execute @s[tag=!host,tag=!verified] ~~~ tellraw @s {"rawtext":[{"text": "§cYou do not have permission to use this command"}]}
execute @s[tag=host,tag=!verified] ~~~ tellraw @s {"rawtext":[{"text": "§cYou do not have permission to use this command"}]}
execute @s[tag=!host,tag=verified] ~~~ tellraw @s {"rawtext":[{"text": "§cYou do not have permission to use this command"}]}

tellraw @s[tag=host,tag=verified,scores={graceperiod=0..}] {"rawtext":[{"text": "§aGame Settings §r> §3Grace period§r has been updated to §3false"}]}
playsound note.pling @s[tag=host,tag=verified,scores={graceperiod=0..}]
scoreboard players set @s[tag=host,tag=verified,scores={graceperiod=0..}] graceperiod 0