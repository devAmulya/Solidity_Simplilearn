pragma solidity ^0.4.18;

contract ValueTypes {
    uint x; // unsigned integer (default is uint256)

    int constant variable1 = 8; // int is alias for int256
    int256 constant variable2 = 8; // explicitly declared as int256

    uint constant VERSION_ID = 0x123A1; // hexadecimal constant

    uint8 b1; // renamed to avoid conflicts
    int64 c1;
    uint248 e;

    bool public b2 = true; // bool variable

    address public owner; // Ethereum address

    byte public a; // byte is an alias for bytes1
    bytes2 public b3; // bytes from 1 to 32, bytes2 = 2 bytes
    bytes32 public c2;

    string public n = "hello"; // string in double quotes

    function ValueTypes() public {
        owner = msg.sender; // set owner to sender of contract creation
    }

    function cast() public view returns (int) {
        return int(b1); // type casting example: uint8 -> int
    }
}
