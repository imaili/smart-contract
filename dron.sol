pragma solidity >=0.7.0 <0.9.0;
import "./CEL.sol";
import "./surtidor.sol";

contract Dron {
    
    address surtidorAddress;
    CEL CELtoken = CEL(0xE6eB63005c65c9Ec81877CF3EF300E36ec88468E);
    
    function repostar(uint creditos) public {
        
        leerQR();
        CELtoken.approve(surtidorAddress, creditos);
        Surtidor(surtidorAddress).repostar(creditos); 
        
    }
    
    function leerQR() private {
        surtidorAddress = address(0xbeE8245533670C9a785a9a3495211f8c309D18Ce);
    }
    
    
    //Necesario para que el dron reciba CELs
    function pago() public payable {}

    
}