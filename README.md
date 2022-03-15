# dcs-better-ground-engagements

This script based on Splash Damage and depending on MOOSE to provide more realistic ground engagements

## What does it do ?

This script tracks weapon shots and creates additional explosions on units nearby. It also routes the groups alive in the area in the opposite direction, to a safe place behind a scenery object. It also suppresses infantry fire during their fallback period

It requires Moose so you should load it after MOOSE in your mission editor

Disclaimer: If you group infantry and vehicles together they will be moving very slowly

## How does it work ?
### Suppression and fallback / take cover

If you modify the script to run in debug mode you can visualise drawings on the F10 map to give you a better representation of what the script is doing

Purple circles correspond to the impact point and the search radius for the blast Black circles correspond to the area the group is fleeing to

The green circle is the zone in wich the group will search for scenery to hide behind The blue circle is the zone the group has selected to hide behind (usualy a large structure, closest to that group)
### Splash Damage

The scripts tracks weapon shots and creates additional explosions on units close to the impact points so they are more realistic, the radius and power of the blast is determined weapon by weapon on a table in the script

## Special thanks

MOOSE: For the inspiration and provided functions Everyone who worked on splash damage, the original script is bugged and coordinates will be wrong if the impact point cannot be determined, resulting in and explosion happening tens of kilometers from the fight.