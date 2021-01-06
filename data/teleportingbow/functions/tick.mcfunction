execute at @a[scores={launch=1..},nbt={SelectedItem:{tag:{MagiBow:1b}}}] run tag @e[type=arrow,limit=1,sort=nearest] add MagiArrow
scoreboard players set @a[scores={launch=1..}] launch 0

execute if entity @e[type=arrow, tag=MagiArrow,nbt={inGround:1b}] as @p at @e[type=arrow, tag=MagiArrow, nbt={inGround:1b}] run tp @p ~ ~ ~
kill @e[type=arrow,tag=MagiArrow,nbt={inGround:1b}]