pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "../node_modules/hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol
// I'm having a punt here that we have to think that we are the teacher of the class marking work and storing student records. 
// Info that does not need to be public should be private for security

contract StudentGrade {

    struct StudentProfile {
        address studentId;
        uint8 totalMarks;
        uint8 percentage;
    }

    address private _owner;
    address public listOfStudents;

    
    mapping(address => StudentProfile) studentIdMap;

    
    
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
    

    function setNewOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "Invalid address");
        owner = _newOwner;
    }

    function saveStudentMark(uint _totalMarks, uint percentage) external {
        require
    }
    sdfsd


    
};