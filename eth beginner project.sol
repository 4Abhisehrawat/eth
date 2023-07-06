// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/
contract MyToken {
    // public variables
    string public myToken = "Abhishek"; // Token Name
    string public myShort = "Abhi"; // Token Abbreviation
    uint public total = 0; // Total Supply

    // mapping variable
    mapping(address => uint) public balance; // Balances of token holders

    // mint function
    function mint(address _add, uint _val) public {
        total += _val; // Increase the total supply
        balance[_add] += _val; // Increase the balance of the given address
    }

    // burn function
    function burn(address _add, uint _val) public {
        if (balance[_add] >= _val) { // Check if the balance of the given address is sufficient for burning
            total -= _val; // Decrease the total supply
            balance[_add] -= _val; // Decrease the balance of the given address
        }
    }
}
