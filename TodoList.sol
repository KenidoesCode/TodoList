// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList{
    struct Task{
        uint id;
        string description;
        bool completed;
    }

    Task[] public alltasks;
    uint public currentId=1;

    function addTask(string memory description)public{
        alltasks.push(Task(currentId,description,false));
        currentId++;
    }

    function getTask(uint id) public view returns (Task memory) {
        for(uint i=0;i<alltasks.length;i++){
            if(alltasks[i].id==id){
                return alltasks[i];
            }
        }
        revert("Task not found");
    }

    function toggleTask(uint TaskId)public{
        for(uint i=0;i<alltasks.length;i++){
            if(alltasks[i].id == TaskId){
                alltasks[i].completed=!alltasks[i].completed;
                return;
            }
        }
    }
}