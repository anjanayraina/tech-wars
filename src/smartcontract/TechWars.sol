// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

contract TechWars{

address public owner ;
mapping (uint8 => techMon ) androidTechMon;
mapping (uint8 => techMon) macTechMon;
mapping (uint8 => techMon) windowsTechMon;

constructor(){
    owner = msg.sender;
    move memory attack = move({ attack : 10,
 speed : 10, 
accuracy : 90
});

move memory speed = move({ attack : 5,
 speed : 100, 
accuracy : 100
});

move memory health = move({

    attack : 20 , 
    accuracy : 100 , 
    speed : 20
});

    androidTechMon[1] = techMon({name : "Android 1.0" , health : 90 , techMonType : "android"  , attackMove : attack , speedMove:speed , healthMove :health });
    androidTechMon[2] = techMon({name : "Cupcake" , health : 100 , techMonType : "android"  , attackMove : attack , speedMove:speed , healthMove :health});
    androidTechMon[3] = techMon({name : "Donut" , health : 110 , techMonType : "android"  , attackMove : attack , speedMove:speed , healthMove :health});
    androidTechMon[4] =techMon({name : "Ice Cream Sandwich" , health : 120 , techMonType : "android"  , attackMove : attack , speedMove:speed , healthMove :health}); 
    androidTechMon[5] = techMon({name : "Jelly Bean" , health : 130 , techMonType : "android"  , attackMove : attack , speedMove:speed , healthMove :health});
    androidTechMon[6] =techMon({name : "KitKat" , health : 140 , techMonType : "android"  , attackMove : attack , speedMove:speed , healthMove :health}); 
    androidTechMon[7] = techMon({name : "Lollipop" , health : 150 , techMonType : "android"  ,attackMove : attack , speedMove:speed , healthMove :health});
    androidTechMon[8] = techMon({name : "Marshmallow" , health : 160 , techMonType : "android"  , attackMove : attack , speedMove:speed , healthMove :health});
    androidTechMon[9] = techMon({name : "Oreo" , health : 170 , techMonType : "android"  , attackMove : attack , speedMove:speed , healthMove :health});
    androidTechMon[10] =techMon({name : "Q" , health : 180 , techMonType : "android"  , attackMove : attack , speedMove:speed , healthMove :health}); 

      move memory attackMac = move({ attack : 30,
 speed : 30, 
accuracy : 85
});

move memory speedMac = move({ attack : 20,
 speed : 100, 
accuracy : 100
});

move memory healthMac = move({

    attack : 10 , 
    accuracy : 100 , 
    speed : 20
});
    macTechMon[1] = techMon({name : "Mac OS X10.0" , health : 30 , techMonType : "mac"  , attackMove : attackMac , speedMove:speedMac , healthMove :healthMac });
    macTechMon[2] = techMon({name : "Mac OS X10.6" , health : 40 , techMonType : "mac"  , attackMove : attackMac , speedMove:speedMac , healthMove :healthMac });
    macTechMon[3] = techMon({name : "Yosemite" , health : 50 , techMonType : "mac"  , attackMove : attackMac , speedMove:speedMac , healthMove :healthMac });
    macTechMon[4] = techMon({name : "Mavericks" , health : 60 , techMonType : "mac"  ,attackMove : attackMac , speedMove:speedMac , healthMove :healthMac });
    macTechMon[5] = techMon({name : "Sierra" , health : 70 , techMonType : "mac"  , attackMove : attackMac , speedMove:speedMac , healthMove :healthMac });
    macTechMon[6] = techMon({name : "High Sierra" , health : 80 , techMonType : "mac"  , attackMove : attackMac , speedMove:speedMac , healthMove :healthMac });
    macTechMon[7] = techMon({name : "Mojave", health : 90 , techMonType : "mac"  , attackMove : attackMac , speedMove:speedMac , healthMove :healthMac });
    macTechMon[8] = techMon({name : "Catalina " , health : 100 , techMonType : "mac"  , attackMove : attackMac , speedMove:speedMac , healthMove :healthMac });
    macTechMon[9] = techMon({name : "Big Sur", health : 110 , techMonType : "mac"  , attackMove : attackMac , speedMove:speedMac , healthMove :healthMac });
    macTechMon[10] = techMon({name : "Monterey" , health : 120 , techMonType : "mac"  ,attackMove : attackMac , speedMove:speedMac , healthMove :healthMac });

          move memory attackWindows = move({ attack : 20,
 speed : 15, 
accuracy : 80
});

move memory speedWindows = move({ attack : 15,
 speed : 100, 
accuracy : 100
});

move memory healthWindows = move({

    attack : 15 , 
    accuracy : 100 , 
    speed : 20
});
    windowsTechMon[1] =  techMon({name : "Windows 1.0" , health : 60 , techMonType : "windows"  , attackMove : attackWindows , speedMove:speedWindows , healthMove :healthWindows});
    windowsTechMon[2] =  techMon({name : "Windows 2.0" , health : 70 , techMonType : "windows"  , attackMove : attackWindows , speedMove:speedWindows , healthMove :healthWindows});
    windowsTechMon[3] =  techMon({name : "Windows 3.0" , health : 80 , techMonType : "windows"  , attackMove : attackWindows , speedMove:speedWindows , healthMove :healthWindows});
    windowsTechMon[4] =  techMon({name : "Windows 95", health : 90 , techMonType : "windows"  , attackMove : attackWindows , speedMove:speedWindows , healthMove :healthWindows});
    windowsTechMon[5] =  techMon({name : "Windows 2000" , health : 100 , techMonType : "windows"  , attackMove : attackWindows , speedMove:speedWindows , healthMove :healthWindows});
    windowsTechMon[6] =  techMon({name : "Windows XP" , health : 110 , techMonType : "windows"  ,attackMove : attackWindows , speedMove:speedWindows , healthMove :healthWindows});
    windowsTechMon[7] =  techMon({name : "Windows 7" , health : 120 , techMonType : "windows"  , attackMove : attackWindows , speedMove:speedWindows , healthMove :healthWindows});
    windowsTechMon[8] =  techMon({name : "Windows 8", health : 130 , techMonType : "windows"  , attackMove : attackWindows , speedMove:speedWindows , healthMove :healthWindows});
    windowsTechMon[9] =  techMon({name : "Windows 10", health : 140 , techMonType : "windows"  , attackMove : attackWindows , speedMove:speedWindows , healthMove :healthWindows});
    windowsTechMon[10] =  techMon({name : "Windows 11" , health : 150 , techMonType : "windows"  ,attackMove : attackWindows , speedMove:speedWindows , healthMove :healthWindows});

}

mapping (address => player) public allPlayers;

struct player{
string name;
uint8 level;
address walletAddress;
string playerType;
uint8 [] techMonOwned;
uint8 xpPoints;
uint8 maxPoints;
uint8 maxLevel;



}

struct techMon{

string name;
uint16 health;
string techMonType;
move attackMove;
move healthMove;
move speedMove;





}

struct move{


uint16 attack;
uint8 speed;
uint8 accuracy;



    
}

function getPlayer(address wallet) public view  returns (player memory ){
    return allPlayers[wallet];

}

function getLevel( address playerName ) public view returns (uint8){

    return allPlayers[playerName].level;

}



function getName( address playerName ) public view returns (string memory ){

    return allPlayers[playerName].name;

}

// techMon[] strings;

function createNewPlayer(string memory playerName , address wallet  , string memory playerType ) public {

    require(!playerExists(wallet) , "This player already exists!!");
    // techMon[] memory strings;
    // player storage currentPlayer  = allPlayers[wallet];
    // currentPlayer.name = playerName;

uint8 [] memory temp;

allPlayers[wallet] = player({

    name : playerName , 
    level : 1 ,
    walletAddress : wallet, 
    playerType : playerType, 
    techMonOwned : temp ,
    xpPoints : 0  ,
    maxPoints : 5 , 
    maxLevel : 10
});

if(isWindows(wallet)){

    allPlayers[wallet].techMonOwned.push(1);
}

else if(isMac(wallet)){
    allPlayers[wallet].techMonOwned.push(1);

}

else{

    allPlayers[wallet].techMonOwned.push(1);
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

allPlayers[wallet].techMonOwned.push(level);

}

}

function giveMacTechMon(address  wallet) public {
uint8 level = getLevel(wallet);
if(level <= 10 ){

allPlayers[wallet].techMonOwned.push(level);

}

}

function giveWindowsTechMon(address wallet) public {

uint8 level = getLevel(wallet);
if(level <= 10 ){

allPlayers[wallet].techMonOwned.push(level);

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