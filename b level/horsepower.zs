import crafttweaker.item.IItemStack;
import mods.horsepower.Press;
import mods.horsepower.Grindstone;
import mods.horsepower.ChoppingBlock;

recipes.removeByMod("horsepower");

//mods.horsepower.Grindstone.add(<input>, <output>, <time>, <hand>, <secondary>, <chance>);
//mods.horsepower.ChoppingBlock.add(<input>, <output>, <time>, <manual>);
//mods.horsepower.Press.add(<input>, <output>);
//mods.horsepower.Press.add(<input>, <fluidOutput>);

Press.remove(<fluid:water>);
Press.remove(<minecraft:dirt>);
Grindstone.remove(<minecraft:dye:1>);
Grindstone.remove(<minecraft:dye:9>);
Grindstone.remove(<minecraft:dye:11>);
Grindstone.remove(<minecraft:dye:13>);
Grindstone.remove(<minecraft:dye:15>);
Grindstone.remove(<minecraft:dye:7>);
Grindstone.remove(<minecraft:dye:12>);
Grindstone.remove(<minecraft:dye:14>);
Grindstone.remove(<minecraft:sugar>);
Grindstone.remove(<minecraft:dye>);
Grindstone.remove(<horsepower:flour>);
ChoppingBlock.remove(<minecraft:planks>);
ChoppingBlock.remove(<minecraft:planks:1>);
ChoppingBlock.remove(<minecraft:planks:2>);
ChoppingBlock.remove(<minecraft:planks:3>);
ChoppingBlock.remove(<minecraft:planks:4>);
ChoppingBlock.remove(<minecraft:planks:5>);

/*
val dyeNum = 2;
val dyeTurn = 16;

val flowerWhite = [
    <weeeflowers:whiteflower>,
    <futuremc:lily_of_the_valley>,
    <minecraft:red_flower:6>,
    <minecraft:stained_hardened_clay>,
    <minecraft:dye:15>
] as IItemStack[];
val flowerOrange = [
    <weeeflowers:orangeflower>,
    <coralreef:coral>,
    <minecraft:red_flower:5>,
    <minecraft:carrot>,
    <harvestcraft:currypowderitem>,
    <natura:edibles:5>,
    <forestry:fruits:2>,
    <harvestcraft:chestnutitem>,
    <traverse:orange_autumnal_leaves>,
    <minecraft:hardened_clay>,
    <traverse:red_rock_cobblestone>,
    <traverse:red_rock>,
    <simplytea:black_tea>,
    //<primallib:bark_dark_oak>,
    <primal:bark_bigoak>,
    <forestry:logs.5>,
    <harvestcraft:wintersquashitem>,
    <primal:pumpkin_piece>,
    <forestry:leaves.decorative.0:12>,
    <minecraft:stained_hardened_clay:1>
] as IItemStack[];
val flowerMagenta = [
    <weeeflowers:magentaflower>,
    <coralreef:coral:1>,
    <minecraft:double_plant:1>,
    <minecraft:red_flower:2>,
    <aquaculture:food:1>,
    <minecraft:stained_hardened_clay:2>
] as IItemStack[];
val flowerLBlue = [
    <weeeflowers:lightblueflower>,
    <minecraft:red_flower:1>,
    <natura:edibles:8>,
    <harvestcraft:juniperberryitem>,
    <quark:glowshroom>,
    <mysticalworld:carapace>,
    <minecraft:stained_hardened_clay:3>
] as IItemStack[];
val flowerYellow = [
    <weeeflowers:yellowflower>,
    <minecraft:double_plant>,
    <minecraft:yellow_flower>,
    <harvestcraft:mustardseedsitem>,
    <harvestcraft:gooseberryitem>,
    <harvestcraft:rhubarbitem>,
    <harvestcraft:pomegranateitem>,
    <primal:bark_oak>,
    <harvestcraft:onionitem>,
    <millenaire:turmeric>,
    //<primallib:bark_oak>,
    <traverse:yellow_autumnal_leaves>,
    <minecraft:stained_hardened_clay:4>
] as IItemStack[];
val flowerLime = [
    <weeeflowers:limeflower>,
    <natura:nether_glowshroom>,
    <better_diving:creepvine>,
    <better_diving:seagrass_tall_bottom>,
    <better_diving:seagrass>,
    <minecraft:stained_hardened_clay:5>
] as IItemStack[];
val flowerPink = [
    <weeeflowers:pinkflower>,
    <coralreef:coral:2>,
    <minecraft:double_plant:5>,
    <minecraft:red_flower:7>,
    <harvestcraft:cactusfruititem>,
    <natura:saguaro_fruit_item>,
    <minecraft:stained_hardened_clay:6>
] as IItemStack[];
val flowerGrey = [
    <weeeflowers:darkgrayflower>,
    <coralreef:coral:5>,
    <primal:charcoal_good>,
    <natura:overworld_logs>,
    <natura:overworld_leaves>,
    <forestry:logs.5:2>,
    <forestry:leaves.decorative.0:9>,
    <harvestcraft:whitemushroomitem>,
    <minecraft:stained_hardened_clay:7>
] as IItemStack[];
val flowerLGrey = [
    <weeeflowers:lightgrayflower>,
    <rustic:ironberries>,
    <minecraft:red_flower:8>,
    <minecraft:red_flower:3>,
    <natura:edibles:7>,
    <primal:charcoal_fair>,
    <rustic:mooncap_mushroom>,
    <immersiveengineering:material:6>,
    <minecraft:stained_hardened_clay:8>
] as IItemStack[];
val flowerCyan =[
    <weeeflowers:cyanflower>,
    <coralreef:coral:3>,
    <inspirations:flower:3>,
    <aquaculture:food>,
    <harvestcraft:seaweeditem>,
    <minecraft:stained_hardened_clay:9>
] as IItemStack[];
val flowerPurple = [
    <weeeflowers:purpleflower>,
    <rustic:grapes>,
    <natura:edibles:4>,
    <harvestcraft:elderberryitem>,
    <harvestcraft:huckleberryitem>,
    <harvestcraft:blackberryitem>,
    <harvestcraft:plumitem>,
    <harvestcraft:grapeitem>,
    <natura:nether_glowshroom:2>,
    <harvestcraft:mulberryitem>,
    <millenaire:grapes>,
    <minecraft:stained_hardened_clay:10>
] as IItemStack[];
val flowerBlue = [
    <weeeflowers:blueflower>,
    <minecraft:dye:4>,
    <futuremc:cornflower>,
    <harvestcraft:blueberryitem>,
    <natura:edibles:3>,
    <natura:nether_glowshroom:1>,
    <minecraft:stained_hardened_clay:11>,
] as IItemStack[];
val flowerBrown = [
    <weeeflowers:brownflower>,
    <minecraft:dye:3>,
    <primal:paraffin_clump>,
    <minecraft:brown_mushroom>,
    <mysticalworld:cooked_squid>,
    <harvestcraft:calamarirawitem>,
    <mysticalworld:raw_squid>,
    <advanced-fishing:fish:23>,
    <aquaculture:fish:15>,
    <primal:tannin_ground>,
    <traverse:brown_autumnal_leaves>,
    <minecraft:stained_hardened_clay:12>,
    <quark:root>
] as IItemStack[];
val flowerGreen = [
    <weeeflowers:greenflower>,
    <coralreef:coral:4>,
    <simplytea:leaf_tea>,
    <natura:edibles:6>,
    <harvestcraft:tealeafitem>,
    <natura:edibles:9>,
    <natura:saguaro>,
    <rustic:deathstalk_mushroom>,
    <minecraft:cactus>,
    <minecraft:stained_hardened_clay:13>
] as IItemStack[];
val flowerRed = [
    <weeeflowers:redflower>,
    <minecraft:red_flower:4>,
    <minecraft:red_flower>,
    <minecraft:double_plant:4>,
    <rustic:wildberries>,
    <evilcraft:hardened_blood_shard>,
    <minecraft:beetroot>,
    <futuremc:sweet_berries>,
    <primal:inferum_ground>,
    <harvestcraft:cranberryitem>,
    <harvestcraft:raspberryitem>,
    <traverse:red_autumnal_leaves>,
    <harvestcraft:strawberryitem>,
    <natura:edibles:2>,
    <harvestcraft:cherryitem>,
    <harvestcraft:tomatoitem>,
    <rustic:tomato>,
    <harvestcraft:beetitem>,
    <forestry:leaves.decorative.1>,
    <minecraft:red_mushroom>,
    <minecraft:stained_hardened_clay:14>
] as IItemStack[];
val flowerBlack = [
    <weeeflowers:blackflower>,
    <futuremc:wither_rose>,
    <minecraft:dye>,
    <primal:sinuous_resin>,
    <minecraft:coal:1>,
    <harvestcraft:walnutitem>,
    <forestry:fruits:1>,
    <primal:charcoal_high>,
    <minecraft:coal>,
    <minecraft:stained_hardened_clay:15>
] as IItemStack[];

val bones = [
    <primal_tech:bone_shard>,
    <totemic:buffalo_items:1>,
    <minecraft:bone>,
    <primal:bone_point>,
    <primal:bone_knapp>,
    <aquaculture:fish:38>,
    <advanced-fishing:fish:40>,
    <primal:sharp_bone>,
    <primal:shark_tooth>,
    <totemic:eagle_drops>
] as IItemStack[];
val snails = [
    <familiarfauna:snail_shell>,
    <harvestcraft:snailrawitem>,
] as IItemStack[];
val roots = {
    <quark:root_flower> : <pickletweaks:dye_powder:11>,
    <quark:root_flower:1> : <pickletweaks:dye_powder:15>,
    <quark:root_flower:2> : <pickletweaks:dye_powder>
} as IItemStack[IItemStack];
val limestones = [
    <primal:carbonate_stone>,
    <quark:limestone>,
    //<magneticraft:limestone>
] as IItemStack[];

for flower in flowerWhite{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder> * dyeNum,
        dyeTurn
    );
}
for flower in flowerOrange{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:1> * dyeNum,
        dyeTurn
    );
}
for flower in flowerMagenta{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:2> * dyeNum,
        dyeTurn
    );
}
for flower in flowerLBlue{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:3> * dyeNum,
        dyeTurn
    );
}
for flower in flowerYellow{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:4> * dyeNum,
        dyeTurn
    );
}
for flower in flowerLime{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:5> * dyeNum,
        dyeTurn
    );
}
for flower in flowerPink{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:6> * dyeNum,
        dyeTurn
    );
}
for flower in flowerGrey{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:7> * dyeNum,
        dyeTurn
    );
}
for flower in flowerLGrey{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:8> * dyeNum,
        dyeTurn
    );
}
for flower in flowerCyan{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:9> * dyeNum,
        dyeTurn
    );
}
for flower in flowerPurple{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:10> * dyeNum,
        dyeTurn
    );
}
for flower in flowerBlue{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:11> * dyeNum,
        dyeTurn
    );
}
for flower in flowerBrown{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:12> * dyeNum,
        dyeTurn
    );
}
for flower in flowerGreen{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:13> * dyeNum,
        dyeTurn
    );
}
for flower in flowerRed{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:14> * dyeNum,
        dyeTurn
    );
}
for flower in flowerBlack{
    Grindstone.add(
        flower,
        <pickletweaks:dye_powder:15> * dyeNum,
        dyeTurn
    );
}

for bone in bones{
    Grindstone.add(
        bone,
        <minecraft:dye:15> * dyeNum,
        dyeTurn
    );
}
for snail in snails{
    Grindstone.add(
        snail,
        <pickletweaks:dye_powder:2>,
        dyeTurn,
        false,
        <minecraft:dye:15>,
        100
    );
}
for root, rootOut in roots{
    Grindstone.add(
        root,
        rootOut * dyeNum,
        dyeTurn
    );
}
for limestone in limestones{
    Grindstone.add(
        limestone,
        <primal:carbonate_slack> * 4,
        dyeTurn
    );
}

*/