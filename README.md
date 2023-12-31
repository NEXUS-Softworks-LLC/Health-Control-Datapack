# Health Control Datapack

This pack is a fork of Cloudwolf's "Custom Damage" datapack, that grants some added fixes, optimizations, and functionality

Find his original pack here : https://www.youtube.com/watch?v=5qtR8ozjSb8
#

To use, run a scoreboard operation on any entity's `hp_dmg` or `hp_max` scores

For example,

`/scoreboard players set LukeVanHemert hp_dmg 5` will deal 5 points of damage to LukeVanHemert

`/scoreboard players set RubyEvilEye hp_dmg -5` will increase RubyEvilEye's health by 5 points

The `hp_max` score will behave the same, except it will alter an entity's *maximum* health


## List of Changes
- Added an `hp_max` score to edit an entity's base maximum health
- Replaced the Scoreboard Function Tree with a Datapack Macro
- Fixed players dying once immediately upon joining the world for the first time
- Fixed entities being able to heal above their maximum health when using negative `hp_dmg` values