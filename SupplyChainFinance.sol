// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
 SIMULAÇÃO DIDÁTICA (REMIX)

Contas:
- Conta 1 → FORNECEDOR
- Conta 2 → EMPRESA (buyer)
- Conta 3 → BANCO

Fluxo:
1. Conta 1 cria a fatura
2. Conta 2 aprova
3. Conta 3 financia
*/

contract SupplyChainFinance {

    //  Estrutura da fatura
    struct Invoice {
        uint id;
        address supplier;   // Conta 1
        address buyer;      // Conta 2
        uint amount;
        bool approved;
        bool financed;
        address bank;       // Conta 3
    }

    uint public invoiceCounter;

    // "Banco de dados" das faturas
    mapping(uint => Invoice) public invoices;

    //  Eventos (logs)
    event InvoiceCreated(uint id, address supplier, uint amount);
    event InvoiceApproved(uint id);
    event InvoiceFinanced(uint id, address bank);

    /*
    =====================================================
    PASSO 1 — FORNECEDOR CRIA A FATURA
    =====================================================
    Executar com Conta 1
    */
    function createInvoice(address _buyer, uint _amount) public {
        invoiceCounter++;

        invoices[invoiceCounter] = Invoice({
            id: invoiceCounter,
            supplier: msg.sender,
            buyer: _buyer,
            amount: _amount,
            approved: false,
            financed: false,
            bank: address(0)
        });

        emit InvoiceCreated(invoiceCounter, msg.sender, _amount);
    }

    /*
    =====================================================
    PASSO 2 — EMPRESA APROVA
    =====================================================
    Executar com Conta 2
    */
    function approveInvoice(uint _id) public {
        Invoice storage inv = invoices[_id];

        require(msg.sender == inv.buyer, "Only buyer can approve");

        inv.approved = true;

        emit InvoiceApproved(_id);
    }

    /*
    =====================================================
    PASSO 3 — BANCO FINANCIA
    =====================================================
    Executar com Conta 3
    */
    function financeInvoice(uint _id) public {
        Invoice storage inv = invoices[_id];

        require(inv.approved, "Invoice not approved");
        require(!inv.financed, "Already financed");

        inv.financed = true;
        inv.bank = msg.sender;

        emit InvoiceFinanced(_id, msg.sender);
    }

    /*
    =====================================================
    CONSULTA SIMPLES (modo antigo)
    =====================================================
    */
    function getInvoice(uint _id) public view returns (Invoice memory) {
        return invoices[_id];
    }

    /*
    =====================================================
    CONSULTA FORMATADA 
    =====================================================
    Mostra os dados organizados (mais fácil de ler no Remix)
    */
    function getInvoiceFormatted(uint _id) public view returns (
        uint id,
        address supplier,
        address buyer,
        uint amount,
        bool approved,
        bool financed,
        address bank
    ) {
        Invoice memory inv = invoices[_id];

        return (
            inv.id,
            inv.supplier,
            inv.buyer,
            inv.amount,
            inv.approved,
            inv.financed,
            inv.bank
        );
    }
}