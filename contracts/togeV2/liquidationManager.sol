// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract liquidationManager {

    address ggLoan;

    constructor(){
        ggLoan = msg.sender;
    }

    modifier isggLoan(){
        require(msg.sender == ggLoan,"liquidationManager: NOT_GGLOAN");
        _;
    }
    
    
}
