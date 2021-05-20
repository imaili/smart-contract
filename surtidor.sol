pragma solidity >=0.7.0 <0.9.0;
import "./CEL.sol";

contract Surtidor {
    
    mapping(address => uint) transacciones;
    CEL CELtoken = CEL(0xE6eB63005c65c9Ec81877CF3EF300E36ec88468E);
    event Repostaje(address dronAddress, uint256 fecha, uint creditos);
    
    function repostar(uint creditos) public {
        
        require(creditos > 0);
        CELtoken.transferFrom(msg.sender, address(this), creditos);
        transacciones[msg.sender] = creditos;
        emit Repostaje(msg.sender, block.timestamp, creditos);
        
    }
    
    function pago() public payable {}

    

}