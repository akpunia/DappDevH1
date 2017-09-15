pragma solidity ^0.4.16;

contract Fibonacci {
	function calculate(uint position) returns (uint result) {
		uint x = 0;
        uint y = 1;
        uint z = 1;

        for (uint i = 0; i < position; i++){
            x = y;
            y = z;
            z = x + y;
        }

        return x;
	}


	/* Add a fallback function to prevent contract payability and non-existent function calls */
    function() {
        throw 'This contract only calculates the Ficonacci sequence';
    }

}
