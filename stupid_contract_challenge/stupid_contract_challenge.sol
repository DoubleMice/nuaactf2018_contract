pragma solidity ^0.4.25;

contract stupidChallenge{
    bytes32 seed = 0xaaa0adabb79fb8b9bca5a8938fa3a2b8415250476c705b525f5f565d5456124e;
    function generateFlag() public returns(bytes){
        bytes memory finalFlag = new bytes(seed.length);
        uint i;
        for(i = 0;i<seed.length/2;i++) {
            finalFlag[i]=seed[i]^0xcc;
        }
        for(;i<seed.length;i++) {
            finalFlag[i]=seed[i]^0x33;
        }
        return finalFlag;
    }
}