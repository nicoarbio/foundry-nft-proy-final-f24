// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { Test, console } from "forge-std/Test.sol";
import { BUSD } from "../src/BUSD.sol";
import { CCNFT } from "../src/CCNFT.sol";

/**
 * @notice Definición del contrato de prueba CCNFTTest que hereda de Test.
 * @dev Declaración de direcciones y dos instancias de contratos (BUSD y CCNFT).
 */
contract CCNFTTest is Test {
    address deployer;
    address c1;
    address c2;
    address funds;
    address fees;
    BUSD busd;
    CCNFT ccnft;

    /**
     * @notice Ejecución antes de cada prueba.
     * @dev Inicializar las direcciones y desplgar las instancias de BUSD y CCNFT.
     */
    function setUp() public {
        deployer = makeAddr("deployer");
        c1 = makeAddr("c1");
        c2 = makeAddr("c2");
        funds = makeAddr("funds");
        fees = makeAddr("fees");
        busd = new BUSD();
        ccnft = new CCNFT("CriptoSoja", "CSJ");
    }

    /**
     * @notice Prueba de "setFundsCollector" del contrato CCNFT.
     */
    // Llamar al método y despues verificar que el valor se haya establecido correctamente.
    function testSetFundsCollector() public {
        assertEq(ccnft.fundsCollector(), address(0), unicode"La dirección de fundsCollector tiene un valor inicial incorrecto");
        ccnft.setFundsCollector(funds);
        assertEq(ccnft.fundsCollector(), funds, unicode"La dirección de fundsCollector difiere del valor asignado");
    }

    /**
     * @notice Prueba de "setFeesCollector" del contrato CCNFT
     */
    // Verificar que el valor se haya establecido correctamente.
    function testSetFeesCollector() public {
        assertEq(ccnft.feesCollector(), address(0), unicode"La dirección de feesCollector tiene un valor inicial incorrecto");
        ccnft.setFeesCollector(fees);
        assertEq(ccnft.feesCollector(), fees, unicode"La dirección de feesCollector difiere del valor asignado");
    }

    /**
     * @notice Prueba de "setProfitToPay" del contrato CCNFT
     */
    // Verificar que el valor se haya establecido correctamente.
    function testSetProfitToPay() public {
        assertEq(ccnft.profitToPay(), 0, unicode"El valor de profitToPay tiene un valor inicial incorrecto");
        ccnft.setProfitToPay(100);
        assertEq(ccnft.profitToPay(), 100, unicode"El valor de profitToPay difiere del valor asignado");
    }

    /**
     * @notice Prueba de "setCanBuy" primero estableciéndolo en true y verificando que se establezca correctamente.
     */
    // Despues establecerlo en false verificando nuevamente.
    function testSetCanBuy() public {
        assertEq(ccnft.canBuy(), false, unicode"El valor de canBuy tiene un valor inicial incorrecto");
        ccnft.setCanBuy(true);
        assertEq(ccnft.canBuy(), true, unicode"El valor de canBuy difiere del valor asignado");
        ccnft.setCanBuy(false);
        assertEq(ccnft.canBuy(), false, unicode"El valor de canBuy difiere del valor asignado");
    }

    /**
     * @notice Prueba de método "setCanTrade". Similar a "testSetCanBuy".
     */
    function testSetCanTrade() public {
        assertEq(ccnft.canTrade(), false, unicode"El valor de canTrade tiene un valor inicial incorrecto");
        ccnft.setCanTrade(true);
        assertEq(ccnft.canTrade(), true, unicode"El valor de canTrade difiere del valor asignado");
        ccnft.setCanTrade(false);
        assertEq(ccnft.canTrade(), false, unicode"El valor de canTrade difiere del valor asignado");
    }

    /**
     * @notice Prueba de método "setCanClaim". Similar a "testSetCanBuy".
     */
    function testSetCanClaim() public {
        assertEq(ccnft.canClaim(), false, unicode"El valor de canClaim tiene un valor inicial incorrecto");
        ccnft.setCanClaim(true);
        assertEq(ccnft.canClaim(), true, unicode"El valor de canClaim difiere del valor asignado");
        ccnft.setCanClaim(false);
        assertEq(ccnft.canClaim(), false, unicode"El valor de canClaim difiere del valor asignado");
    }

    /**
     * @notice Prueba de "setMaxValueToRaise" con diferentes valores.
     */
    // Verifica que se establezcan correctamente.
    function testSetMaxValueToRaise() public {
        assertEq(ccnft.maxValueToRaise(), 0, unicode"El valor de maxValueToRaise tiene un valor inicial incorrecto");
        ccnft.setMaxValueToRaise(100);
        assertEq(ccnft.maxValueToRaise(), 100, unicode"El valor de maxValueToRaise difiere del valor asignado");
    }

    /**
     * @notice Prueba de "addValidValues" añadiendo diferentes valores.
     */
    // Verificar que se hayan añadido correctamente.
    function testAddValidValues() public {
        // 1 2 3 4 5
        ccnft.addValidValues(4);
        ccnft.addValidValues(1);
        ccnft.addValidValues(5);
        ccnft.addValidValues(2);
        ccnft.addValidValues(3);
        assertEq(ccnft.validValues(1), true, unicode"El valor añadido 1 no se encuentra habilitado");
        assertEq(ccnft.validValues(4), true, unicode"El valor añadido 4 no se encuentra habilitado");
        assertEq(ccnft.validValues(6), false, unicode"El valor 6 no debería estar habilitado");
    }

    /**
     * @notice Prueba de "deleteValidValues" añadiendo y luego eliminando un valor.
     */
    // Verificar que la eliminación se haya realizado correctamente.
    function testDeleteValidValues() public {
        ccnft.addValidValues(98);
        ccnft.deleteValidValues(98);
        assertEq(ccnft.validValues(98), false, unicode"El valor eliminado sigue habilitado");
    }

    /**
     * @notice Prueba de "setMaxBatchCount".
     */
    // Verifica que el valor se haya establecido correctamente.
    function testSetMaxBatchCount() public {
        assertEq(ccnft.maxBatchCount(), 0, unicode"El valor de maxBatchCount tiene un valor inicial incorrecto");
        ccnft.setMaxBatchCount(100);
        assertEq(ccnft.maxBatchCount(), 100, unicode"El valor de maxBatchCount difiere del valor asignado");
    }

    /**
     * @notice Prueba de "setBuyFee".
     */
    // Verificar que el valor se haya establecido correctamente.
    function testSetBuyFee() public {
        assertEq(ccnft.buyFee(), 0, unicode"El valor de buyFee tiene un valor inicial incorrecto");
        ccnft.setBuyFee(100);
        assertEq(ccnft.buyFee(), 100, unicode"El valor de buyFee difiere del valor asignado");
    }

    /**
     * @notice Prueba de "setTradeFee".
     */
    // Verificar que el valor se haya establecido correctamente.
    function testSetTradeFee() public {
        assertEq(ccnft.tradeFee(), 0, unicode"El valor de tradeFee tiene un valor inicial incorrecto");
        ccnft.setTradeFee(100);
        assertEq(ccnft.tradeFee(), 100, unicode"El valor de tradeFee difiere del valor asignado");
    }

    /**
     * @notice Prueba de que no se pueda comerciar cuando canTrade es false.
     */
    // Verificar que se lance un error esperado.
    function testCannotTradeWhenCanTradeIsFalse() public {
        ccnft.setCanTrade(false);
        vm.expectRevert();
        ccnft.trade(1);
    }

    /**
     * @notice Prueba que no se pueda comerciar con un token que no existe, incluso si canTrade es true.
     */
    // Verificar que se lance un error esperado.
    function testCannotTradeWhenTokenDoesNotExist() public {
        ccnft.setCanTrade(true);
        vm.expectRevert();
        ccnft.trade(1);
    }
}
