pragma solidity ^0.4.0;

contract Bidder {
    string public name;
    uint256 public bidAmount = 20000;
    bool public eligible;
    uint256 constant minBid = 1000;

    function setName(string nm) public {
        name = nm;
    }

    function setBidAmount(uint x) public {
        bidAmount = x;
    }

    function determineEligibility() public{
        if(bidAmount >= minBid) eligible = true;
        else eligible = false;
    }
}
