import { ethers } from "hardhat";

async function main() {
  const SunCity = await ethers.getContractFactory("SunCity");
  const fs = require("fs");
  fs.writeFileSync("out/sun.bin", SunCity.bytecode);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
