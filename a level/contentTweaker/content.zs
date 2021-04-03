#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;
/*
var colorliquidResin = Color.fromHex("b8bc31") as Color;
var colorRubberHard = Color.fromHex("bc7b31") as Color;
var colorPlasticHard = Color.fromHex("e0c8ac") as Color;

// b8bc31 resin
// bc7b31 rubber
// e0c8ac plastic
var rubber = MaterialSystem.getMaterialBuilder()
    .setName("Rubber")
    .setColor(colorRubberHard)
    .build();
var plastic = MaterialSystem.getMaterialBuilder()
    .setName("Plastic")
    .setColor(colorPlasticHard)
    .build();

resinHard.registerParts(["gear", "plate", "nugget", "ingot", "rod", "dust"] as string[]);
rubberHard.registerParts(["gear", "plate", "nugget", "ingot", "rod", "dust"] as string[]);
plasticHard.registerParts(["gear", "plate", "nugget", "ingot", "rod", "dust"] as string[]);

var moltenResin = resinHard.registerPart("molten").getData();
var moltenRubber = rubberHard.registerPart("molten").getData();
var moltenPlastic = plasticHard.registerPart("molten").getData();

moltenResin.addDataValue("temperature", "200");
moltenRubber.addDataValue("temperature", "400");
moltenPlastic.addDataValue("temperature", "800");
moltenResin.addDataValue("luminosity", "10");
moltenRubber.addDataValue("luminosity", "10");
moltenPlastic.addDataValue("luminosity", "10");

var blockResin = resinHard.registerPart("block").getData();
var blockRubber = rubberHard.registerPart("block").getData();
var blockPlastic = plasticHard.registerPart("block").getData();
blockResin.addDataValue("hardness", "5");
blockRubber.addDataValue("hardness", "5");
blockPlastic.addDataValue("hardness", "5");
blockResin.addDataValue("resistance", "30");
blockRubber.addDataValue("resistance", "30");
blockPlastic.addDataValue("resistance", "30");
blockResin.addDataValue("harvestTool", "pickaxe");
blockRubber.addDataValue("harvestTool", "pickaxe");
blockPlastic.addDataValue("harvestTool", "pickaxe");


var ore = materialName.registerPart("ore").getData();
ore.addDataValue("variants", "minecraft:stone,minecraft:end_stone");
ore.addDataValue("hardness", "3,3");
ore.addDataValue("resistance", "15,15");
ore.addDataValue("harvestLevel", "1,3");
ore.addDataValue("harvestTool", "pickaxe,pickaxe");

//rubberHard.registerPart(["clump", ] as string[]);


var liquidResin = VanillaFactory.createFluid("liquid_resin", Color.fromHex("b8bc31"));
var liquidRubber = VanillaFactory.createFluid("liquid_rubber", Color.fromHex("bc7b31"));
var liquidPlastic = VanillaFactory.createFluid("liquid_plastic", Color.fromHex("e0c8ac"));

liquidResin.register();
liquidRubber.register();
liquidPlastic.register();

// b8bc31 resin
// bc7b31 rubber
// e0c8ac plastic

*/