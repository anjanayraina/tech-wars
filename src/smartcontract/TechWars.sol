// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

contract TechWars{

address public owner ;

constructor(){
    owner = msg.sender;
}

mapping (string => player) public allPlayers;

struct player{
string name;
uint8 level;
address walletAddress;

}

function getLevel( string memory playerName ) public view returns (uint8){

    return allPlayers[playerName].level;

}

function getAddress( string memory playerName ) public view returns (address ){

    return allPlayers[playerName].walletAddress;

}

}