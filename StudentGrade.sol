pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "../node_modules/hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol


contract StudentGrade {
    // 5. Create stuct with student details
    struct StudentProfile {
        address studentId;
        uint8 totalMarks;
        uint8 percentage;
    }
    // 1. Make owner state var public
    address public _owner;
    address public listOfStudents;

    // 2. Create mapping of students
    mapping(address => StudentProfile) studentIdMap;

    
    // 3. Create constructor owner = msg.sender
    constructor() {
        owner = msg.sender;
    }

    // 4. Create onlyOwner modifier
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier checkDuplicate(address _addr) {
        require(_addr != address(0), "Student already registered");
    _;
    }
    

    function saveStudentMark(uint _totalMarks, uint percentage) external {
        
    }
    // Make sure student cannot register twice

};