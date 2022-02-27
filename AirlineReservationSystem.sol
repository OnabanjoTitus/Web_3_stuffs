//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract AirlineReservationSystem{


    struct Passenger{
        uint256 class;
        string name;
        uint256 seatNumber;
    }
    Passenger[10] public passengers;

function addPassenger(string memory _name,uint256 _class)public returns(string memory) {

        for(uint256 i=0; i<10; i++){
          if(passengers[i].class==0){
              break;
          }
          if(i==9){
             return string(abi.encodePacked("Flights Has been fully booked")); 
          } 


        }

        if(_class==1){
        for(uint256 i=0; i<5; i++){
            if(passengers[i].class==0){
               passengers[i]=Passenger(_class,_name,i+1);
               return string(abi.encodePacked("Seat booked",i+1,"for passenger ", _name," first class"));
            }
            if(i==4){
                return string(abi.encodePacked("First Class has been fully booked"));
            } 
            }
 
        }
        if(_class==2){
        for(uint256 i=5; i<10; i++){
            if(passengers[i].class==0){
               passengers[i]=Passenger(_class,_name,i+1);
               return string(abi.encodePacked("Seat booked",i+1,"for passenger ", _name," economy class"));
            }
            if(i==4){
                return string(abi.encodePacked("Economy Class has been fully booked"));
            } 
            }
 
        }    
    
    }
      

  
}



