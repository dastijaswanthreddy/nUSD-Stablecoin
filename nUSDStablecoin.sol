// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract nUSDStablecoin
{
    uint256 public totalSupply = 0;
    mapping(address => uint256) public balances;
    
    AggregatorV3Interface public priceFeed;
    
    constructor(address _priceFeedAddress) {
        priceFeed = AggregatorV3Interface(_priceFeedAddress);
    }
    
    function depositETH() public payable {
        require(msg.value > 0, "Invalid deposit amount");
        uint256 ethPrice = getETHPrice();
        uint256 nUSDReceived = (msg.value/(10**18) * ethPrice) / 2;
        balances[msg.sender] += nUSDReceived;
        totalSupply += nUSDReceived;
    }
    
    function redeemETH(uint256 nUSDAmount) public {
        require(nUSDAmount > 0, "Invalid redeem amount");
        uint256 ethPrice = getETHPrice();
        require(balances[msg.sender] >= 2 * ethPrice, "Insufficient balance");
        uint256 ETHReceived = nUSDAmount / (2 * ethPrice);
        uint256 WeiReceived = ETHReceived * (10**18);
        balances[msg.sender] -= nUSDAmount;
        totalSupply -= nUSDAmount; 
        payable(msg.sender).transfer(WeiReceived);
    }
    
    function getETHPrice() public view returns (uint256) {
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return uint256(price);
    }
}
