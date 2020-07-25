pragma solidity >=0.4.22 <0.7.0;


contract Land {

    uint256 ownerID;

    function setOwner(uint256 name) public {
        ownerID = name;
    }

    function getOwner() public view returns (uint256){
        return ownerID;
    }
}
