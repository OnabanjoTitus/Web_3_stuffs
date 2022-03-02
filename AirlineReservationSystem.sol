//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AirlineReservationSystem{


    struct Passenger{
        uint256 class;
        string name;
        uint256 seatNumber;
    }
    Passenger[10] passengers;

function addPassenger(string memory _name,uint256 _class)public returns(string memory) {

        //check if we still have seats in the airplane
        for(uint256 i=0; i<10; i++){
          if(passengers[i].class==0){
              break;
          }
          if(i==9){
             return string(abi.encodePacked("Flights Has been fully booked")); 
          } 


        }

        //check if we still have first class seats and assign seat
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
        //check if we still have economy seats and assign seat
        if(_class==2){
        for(uint256 i=5; i<10; i++){
            if(passengers[i].class==0){
               passengers[i]=Passenger(_class,_name,i+1);
               return string(abi.encodePacked("Seat booked",i+1,"for passenger ", _name," economy class"));
            }
            if(i==9){
                return string(abi.encodePacked("Economy Class has been fully booked"));
            } 
            }
 
        }    
    
    }
    
    function viewPassengerBySeatNumber(uint256 _seatNumber)public view returns(Passenger memory){
        _seatNumber=_seatNumber-uint256(1);
        return passengers[_seatNumber];
    }

  
}
