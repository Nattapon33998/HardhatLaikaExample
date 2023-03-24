const { ethers } = require("hardhat");

async function main() {
  const MyContract = await ethers.getContractFactory("MyContract");
  const myContract = await MyContract.deploy("Oat");

  console.log("My Contract addess is : ", myContract.address);
}

main().catch((error) => {
  console.log(error);
  process.exitCode = 1;
});
