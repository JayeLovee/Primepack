import crafttweaker.item.IItemStack;
recipes.removeByMod("immersivepetroleum");

//mods.immersivepetroleum.Distillation.addRecipe(ILiquidStack[] fluidOutputs, IItemStack[] itemOutputs, ILiquidStack fluidInput, int energy, int time, float[] chance)

//mods.immersivepetroleum.Distillation.addRecipe([<liquid:lava> * 5, <liquid:gasoline> * 5], [<minecraft:diamond>, <minecraft:leather> * 2], <liquid:water>, 5, 5, [1, 1]);

//mods.immersivepetroleum.Motorboat.registerMotorboatFuel(ILiquidStack fuelEntry, int mbPerTick);
//mods.immersivepetroleum.Motorboat.registerMotorboatFuel(<liquid:water>, 5);

//mods.immersivepetroleum.PortableGenerator.registerPortableGenFuel(ILiquidStack fuelEntry, int fluxPerTick, int mbPerTick);
//mods.immersivepetroleum.PortableGenerator.registerPortableGenFuel(<liquid:water>, 2048, 50);

//mods.immersivepetroleum.Lubricant.registerLubricant(ILiquidStack lubricantEntry, int amount);
//mods.immersivepetroleum.Lubricant.registerLubricant(<liquid:lava>, 500);

//mods.immersivepetroleum.Reservoir.registerReservoir(String name, ILiquidStack fluid, int minSize, int maxSize, int replenishRate, int weight);
//mods.immersivepetroleum.Reservoir.registerReservoir("WaterTest", <liquid:water>, 48000, 64000, 200, 5);