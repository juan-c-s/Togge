// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract paymentManager {

    address ggLoan;

    constructor(){
        ggLoan = msg.sender;
    }

    modifier isggLoan(){
        require(msg.sender == ggLoan,"paymentManager: NOT_GGLOAN");
        _;
    }
}


