# 📦 Blockchain para Negócios — Supply Chain Finance (Case Lojas Americanas)

Este repositório apresenta um projeto prático de **Blockchain aplicado à antecipação de recebíveis**, utilizando **smart contracts em Solidity** e integração com interface web.

---

## 📁 Estrutura do Projeto

- **Case_Lojas_Americanas.pdf**  
  Estudo de caso baseado nas Lojas Americanas, incluindo:
  - Contexto do problema
  - Explicação do smart contract `SupplyChainFinance.sol`
  - Passo a passo de execução no Remix

- **SupplyChainFinance.sol**  
  Smart contract desenvolvido em Solidity para simular um sistema de antecipação de recebíveis.

- **aula_01_blockchain_negocios.pdf**  
  Material teórico introdutório sobre Blockchain aplicado a negócios.

- **aula_02_blockchain_negocios.pdf**  
  Blockchain Ethereum + Aplicação.

- **index.html**  
  Interface web para interação com o smart contract.  
  Permite visualizar e simular operações de antecipação de recebíveis.

---

## 🚀 Como Executar o Projeto

### 1. Compilar e Deploy do Smart Contract

1. Acesse o Remix:  
https://remix.ethereum.org/

2. Crie um novo arquivo e copie o conteúdo de:


3. Compile o contrato

4. Vá até a aba **Deploy & Run Transactions**

5. Selecione o ambiente:
- `Remix VM (London)` (para testes locais)

6. Clique em **Deploy**

---

### 2. Obter informações do contrato

Após o deploy, copie:

- 📍 Endereço do contrato  
- 📄 ABI (Application Binary Interface)

---

### 3. Executar a Interface Web

1. Abra o arquivo:


2. Insira no código:
- O endereço do contrato
- A ABI gerada no Remix

3. Salve o arquivo

4. Abra no navegador

---

## 🔥 Nível Avançado: Integração com MetaMask

> Conteúdo detalhado disponível em: **aula_02_blockchain_negocios.pdf**

### 📌 Objetivo
Executar o contrato em uma rede blockchain real/simulada usando carteira digital.

---

### 1. Instalar a MetaMask

https://metamask.io/

---

### 2. Configurar a rede

Você pode usar:

- Sepolia (testnet recomendada)
- Ou outra rede de teste

---

### 3. Selecionar ambiente no Remix

No Remix:

- Vá em **Deploy & Run Transactions**
- Em **Environment**, selecione:


2. Insira no código:
- O endereço do contrato
- A ABI gerada no Remix

3. Salve o arquivo

4. Abra no navegador

---

## 🔥 Nível Avançado: Integração com MetaMask

> Conteúdo detalhado disponível na gravação da aula 02.

### 📌 Objetivo
Executar o contrato em uma rede blockchain real/simulada usando carteira digital.

---

### 1. Instalar a MetaMask

https://metamask.io/

---

### 2. Configurar a rede

Você pode usar:

- Sepolia (testnet recomendada)
- Ou outra rede de teste

---

### 3. Selecionar ambiente no Remix

No Remix:

- Vá em **Deploy & Run Transactions**
- Em **Environment**, selecione:


---

### 4. Deploy com MetaMask

1. Clique em **Deploy**
2. A MetaMask abrirá uma janela
3. Confirme a transação

---

### 5. Obter dados do contrato

Após o deploy:

- Endereço do contrato  
- ABI

---

### 6. Integrar com o Frontend

No arquivo `index.html`:

- Substitua:
  - endereço do contrato
  - ABI

---

### 7. Executar no navegador

Abra o `index.html` com a MetaMask ativa.

Agora as transações:
- exigirão confirmação na carteira
- serão registradas na blockchain (testnet)

---

## 💡 Objetivo do Projeto

Demonstrar, na prática, como a tecnologia blockchain pode ser aplicada em:

- Supply Chain Finance  
- Antecipação de recebíveis  
- Redução de risco de crédito  
- Transparência em transações financeiras  

---

## 🧠 Conceitos Abordados

- Smart Contracts (Solidity)
- Web3 Integration
- DeFi aplicada a negócios tradicionais
- Tokenização de recebíveis
- Blockchain em Supply Chain

---

## 📚 Público-Alvo

- Estudantes de Blockchain
- Profissionais de Finanças
- Desenvolvedores Web3
- Pesquisadores em DeFi

---

## ⚠️ Observações

- Este projeto é educacional
- Não deve ser utilizado em produção sem auditoria
- Utilize redes de teste (testnet)

---

## 👨‍💻 Autor

Israel Junior  
