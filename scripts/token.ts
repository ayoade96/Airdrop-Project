
import { ethers } from "hardhat";

async function main() {
const timToken = await ethers.deployContract("Tim");
await timToken.waitForDeployment() 
//console.log(factory);
console.log(`factory deployed to ${timToken.target}`)

}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });