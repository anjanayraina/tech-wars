// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

contract TechWars{

address public owner ;

constructor(){
    owner = msg.sender;
}

mapping (address => player) public allPlayers;

struct player{
string name;
uint8 level;
address walletAddress;
string playerType;
string[] techMonOwned;


}

function getLevel( address playerName ) public view returns (uint8){

    return allPlayers[playerName].level;

}



function getName( address playerName ) public view returns (string memory ){

    return allPlayers[playerName].name;

}

function createNewPlayer(string memory playerName , address wallet  , string memory playerType) public {

    require(!playerExists(wallet) , "This player already exists!!");
     string[] memory strings;
allPlayers[wallet] = player({

    name : playerName , 
    level : 1 ,
    walletAddress : wallet, 
    playerType : playerType, 
    techMonOwned : strings
});

if(keccak256(abi.encodePacked("windows")) == keccak256(abi.encodePacked(playerType))){

allPlayers[wallet].techMonOwned.push("Windows 1");
}

else if(keccak256(abi.encodePacked("mac")) == keccak256(abi.encodePacked(playerType))){
allPlayers[wallet].techMonOwned.push("Macintosh 128K");

}

else{

    allPlayers[wallet].techMonOwned.push("Android 1.0");


}



}

function giveMoreTechMon(address wallet)  public view  {


}

function increaseLevel( address wallet) public{

allPlayers[wallet].level++;

}

function playerExists(address playerName) public view returns (bool) {

if(allPlayers[playerName].level > 0)return true;

return false;


}





}