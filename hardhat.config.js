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
      accounts: ["f1cdbf9fc5dfc2dee0dd9b264520010062b0a86b60dc3ae672a4a8b245f2951d"], // 0x0560aDB38A0C4828be88aeAE575F9ea5Acb549e8
      chainId: 80001,
      gasMultiplier: 1.08,
      from: "0x0560aDB38A0C4828be88aeAE575F9ea5Acb549e8",
      // https://mumbai.polygonscan.com/address/0x0560aDB38A0C4828be88aeAE575F9ea5Acb549e8
      // explorer: "https://mumbai.polygonscan.com/"
      // url: "https://rpc.ankr.com/polygon_mumbai",
      url: "https://polygon-mumbai-bor.publicnode.com",
      // url: "https://polygon-testnet.public.blastapi.io"
      // url: "https://polygon-mumbai.blockpi.network/v1/rpc/public",
    },
    ftmTestNet: {
      accounts: ["f1cdbf9fc5dfc2dee0dd9b264520010062b0a86b60dc3ae672a4a8b245f2951d"], // 0x0560aDB38A0C4828be88aeAE575F9ea5Acb549e8
      chainId: 4002,
      gasMultiplier: 1.08,
      from: "0x0560aDB38A0C4828be88aeAE575F9ea5Acb549e8",
      url: "https://fantom-testnet.publicnode.com",
    }
  },
};
