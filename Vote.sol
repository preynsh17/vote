// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Vote {

    string[] public candidates = ["garv", "preynsh", "trump"];
    uint256[3] public voteCount;

    function vote(string memory _candidate) public payable {
        if(keccak256(abi.encodePacked(candidates[0]))==keccak256(abi.encodePacked(_candidate))) {
            voteCount[0]++;
        }
        if(keccak256(abi.encodePacked(candidates[1]))==keccak256(abi.encodePacked(_candidate))) {
            voteCount[1]++;
        }
        if(keccak256(abi.encodePacked(candidates[2]))==keccak256(abi.encodePacked(_candidate))) {
            voteCount[2]++;
        }
    }
}
