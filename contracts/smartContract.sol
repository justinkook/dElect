pragma solidity ^0.4.2;
library dmanLibrary {
struct data {
    address beneficiary;
    bytes32 data;
    bool isValue;
    uint32 expiration_time;
}
}

contract deadManSwitch {
    using dmanLibrary for dmanLibrary.data;
    mapping (address => dmanLibrary.data) Dman_data;


    function createDmanSwitch ( address beneficiary, bytes32 data, uint32 expiration_time) returns (bool) {
        if (Dman_data[msg.sender].isValue) throw;

        Dman_data[msg.sender].isValue = true;
        Dman_data[msg.sender].beneficiary = beneficiary;
        Dman_data[msg.sender].data = data;
        Dman_data[msg.sender].expiration_time = expiration_time;
    }

    function preventKick (uint32 new_expiration_time) {
        if (!Dman_data[msg.sender].isValue) throw;
        Dman_data[msg.sender].expiration_time = new_expiration_time;
    }

    function getTimeLeft() returns (uint32 return_time) {
        if(!Dman_data[msg.sender].isValue) throw;
        return Dman_data[msg.sender].expiration_time;
    }

    function getExpirationTimeFromAddress( address sender) returns (uint32) {
        if(!Dman_data[msg.sender].isValue) throw;
        return Dman_data[sender].expiration_time;
    }
    function getExpirationTime() returns (uint32) {
        if(!Dman_data[sender].isValue) throw;
        return Dman_data[msg.sender].expiration_time;
    }

    function isAddressExpired(address sender, uint32 now_time) returns (bool) {
        if(!Dman_data[sender].isValue) throw;
        if(now_time == Dman_data[sender].expiration_time) throw;
        return true;
        else
            return false;
    }

    function getDataFromAddress(address sender) returns (bytes32) {
        if(!Dman_data[sender].isValue) throw;
        if(msg.sender != Dman_data[sender].beneficiary) throw;
        return Dman_data[sender].data;
    }
}