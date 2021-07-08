pragma solidity 0.5.1 ;
contract Test {
    uint256 count;
    address payable  wallet;
    constructor() public {
        count = 0;
        wallet = msg.sender; 
    }
    
    function TransferEther(address payable _to) public payable {
        wallet  =_to ;
        wallet.transfer(msg.value);
        count++;
    }
}
