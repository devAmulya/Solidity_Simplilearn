pragma solidity ^0.4.0;

contract ArrayExample {
    bytes32[5] public Names;
    bytes32[] public examples;
    uint[] public myArray;

    function test() public constant returns (uint[]) {
        // Using bytes32 instead of string for fixed-size array initialization in memory
        bytes32[5] memory inlineArray = [
            bytes32("You"),
            bytes32("can"),
            bytes32("init"),
            bytes32("like"),
            bytes32("this")
        ];

        // Declaring a fixed-size outer array with dynamic inner arrays
        uint[][5] memory multidem;

        myArray.push(123); // push into dynamic storage array
        examples.push("Matt"); // push bytes32 literal into dynamic storage array
        Names[0] = "Matt"; // assign to fixed-size storage array

        return myArray;
    }
}
