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

}

function getLevel( address playerName ) public view returns (uint8){

    return allPlayers[playerName].level;

}



function getAddress( address playerName ) public view returns (string memory ){

    return allPlayers[playerName].name;

}

function createNewPlayer(string memory playerName , address wallet) public {

    // require(playerExists(wallet) , "This player already exists!!");

allPlayers[wallet] = player({

    name : playerName , 
    level : 1 ,
    walletAddress : wallet
});

}

function playerExists(address playerName) public view returns (bool) {

if(allPlayers[playerName].level == 0)return true;

return false;


}



}