// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

contract TechWars{

address public owner ;
mapping (uint8 => string ) androidTechMon;
mapping (uint8 => string) macTechMon;
mapping (uint8 => string) windowsTechMon;

constructor(){
    owner = msg.sender;
    androidTechMon[1] = "";
    
}

mapping (address => player) public allPlayers;

struct player{
string name;
uint8 level;
address walletAddress;
string playerType;
string[] techMonOwned;
uint8 xpPoints;
uint8 maxPoints;
uint8 maxLevel;



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
    techMonOwned : strings,
    xpPoints : 0  ,
    maxPoints : 5 , 
    maxLevel : 10
});

if(isWindows(wallet)){

    allPlayers[wallet].techMonOwned.push("Windows 1");
}

else if(isMac(wallet)){
    allPlayers[wallet].techMonOwned.push("Macintosh 128K");

}

else{

    allPlayers[wallet].techMonOwned.push("Android 1.0");
}



}

function isAndroid(address wallet)public view returns(bool){
string memory playerType = allPlayers[wallet].playerType;

if(keccak256(abi.encodePacked("android")) == keccak256(abi.encodePacked(playerType)))return true;
return false;



}

function isMac(address wallet)public view returns(bool){
string memory playerType = allPlayers[wallet].playerType;

if(keccak256(abi.encodePacked("mac")) == keccak256(abi.encodePacked(playerType)))return true;
return false;



}

function isWindows(address wallet)public view returns(bool){
string memory playerType = allPlayers[wallet].playerType;

if(keccak256(abi.encodePacked("windows")) == keccak256(abi.encodePacked(playerType)))return true;
return false;


}

function giveAndroidTechMon(address wallet ) public {



}

function giveMacTechMon(address  wallet) public {


}

function giveWindowsTechMon(address wallet) public {

uint8 level = getLevel(wallet);
if(level < 10 ){



}

}

function giveMoreTechMon(address wallet)  public view  {

if(isAndroid(wallet)){

}
else if(isMac(wallet)){


}
else{


}

}

function increaseLevel( address wallet) public{

allPlayers[wallet].level++;
giveMoreTechMon(wallet);

}

function playerExists(address playerName) public view returns (bool) {

if(allPlayers[playerName].level > 0)return true;

return false;


}

function incrementXP(address wallet) public {
   if(allPlayers[wallet].level < 10) allPlayers[wallet].xpPoints++;

   if(allPlayers[wallet].level < 10 && allPlayers[wallet].xpPoints > 5){

       increaseLevel(wallet);
       allPlayers[wallet].xpPoints =0 ;
       
   }

}





}