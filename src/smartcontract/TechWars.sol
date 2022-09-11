// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

contract TechWars{

address public owner ;
mapping (uint8 => string ) androidTechMon;
mapping (uint8 => string) macTechMon;
mapping (uint8 => string) windowsTechMon;

constructor(){
    owner = msg.sender;
    androidTechMon[1] = "Android 1.0";
    androidTechMon[2] = "Cupcake";
    androidTechMon[3] = "Donut";
    androidTechMon[4] = "Ice Cream Sandwich";
    androidTechMon[5] = "Jelly Bean";
    androidTechMon[6] = "KitKat";
    androidTechMon[7] = "Lollipop";
    androidTechMon[8] = "Marshmallow ";
    androidTechMon[9] = "Oreo";
    androidTechMon[10] = "Q";


    macTechMon[1] = "Mac OS X10.0";
    macTechMon[2] = "MacOS X10.6";
    macTechMon[3] = "Yosemite";
    macTechMon[4] = "Mavericks";
    macTechMon[5] = "Sierra";
    macTechMon[6] = "High Sierra";
    macTechMon[7] = "Mojave";
    macTechMon[8] = "Catalina ";
    macTechMon[9] = "Big Sur";
    macTechMon[10] = "Monterey";

    
    windowsTechMon[1] = "Windows 1.0";
    windowsTechMon[2] = "Windows 2.0";
    windowsTechMon[3] = "Windows 3.0";
    windowsTechMon[4] = "Windows 95";
    windowsTechMon[5] = "Windows 2000";
    windowsTechMon[6] = "Windows XP";
    windowsTechMon[7] = "Windows 7";
    windowsTechMon[8] = "Windows 8";
    windowsTechMon[9] = "Windows 10";
    windowsTechMon[10] = "Windows 11";

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


uint8 level = getLevel(wallet);
if(level <= 10 ){

allPlayers[wallet].techMonOwned.push(androidTechMon[level]);

}

}

function giveMacTechMon(address  wallet) public {
uint8 level = getLevel(wallet);
if(level <= 10 ){

allPlayers[wallet].techMonOwned.push(macTechMon[level]);

}

}

function giveWindowsTechMon(address wallet) public {

uint8 level = getLevel(wallet);
if(level <= 10 ){

allPlayers[wallet].techMonOwned.push(windowsTechMon[level]);

}

}

function giveMoreTechMon(address wallet)  public   {

if(isAndroid(wallet)){

giveAndroidTechMon(wallet);
}
else if(isMac(wallet)){
giveMacTechMon(wallet);


}
else{
giveWindowsTechMon(wallet);

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