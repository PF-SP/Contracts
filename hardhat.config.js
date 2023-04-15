require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  etherscan: {
    apiKey: "UPKXSVFPX6BX3UZY5ABPAJWFKN4HE1ZBY5",
  },
  solidity: {
    version: "0.8.19",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  paths: {
    sources: "./contracts",
    tests: "./test",
    cache: "./cache",
    artifacts: "./artifacts"
  },
  networks: {
    polygonTestNet: {
      accounts: ["f1cdbf9fc5dfc2dee0dd9b264520010062b0a86b60dc3ae672a4a8b245f2951d"],
      chainId: 80001,
      gasPrice: "auto",
      gasMultiplier: 1.1,
      from: "0x0560aDB38A0C4828be88aeAE575F9ea5Acb549e8",
      url: "https://polygon-testnet.public.blastapi.io"
    }
  }
};
