# 🕵️‍♂️ Decentralized Alibi Smart Contract

## 📌 What is it?

The **Decentralized Alibi** smart contract allows users to **prove their presence** at a specific time and place in a **secure and immutable** way. Users submit a **hashed location and timestamp**, and witnesses can **verify** the claim by signing it. Once enough witnesses approve, the alibi is permanently stored as verified on the blockchain.

## ❓ Why use it?

🔹 **Immutable Proof**: Records are permanently stored on the blockchain, making them tamper-proof.

🔹 **Privacy-Preserving**: Instead of revealing exact locations, users submit a **hashed version** to maintain privacy.

🔹 **Decentralized Verification**: Requires multiple independent witnesses to confirm a claim, preventing fraud.

🔹 **Real-World Applications**:

- 📜 **Legal Proof**: Users can prove they were at a location during a specific time.
- 🎟️ **Event Attendance**: Securely verify presence at concerts, meetings, or important events.
- 🕶️ **Private Investigations**: Anonymously establish an alibi without centralized authorities.
- ⭐ **Trustless Reputation Systems**: Users can build verifiable trust records based on real-world presence.

## ⚙️ How it Works

1️⃣ **User Submits Alibi**: A user submits a **hashed location** with a timestamp.
2️⃣ **Witness Verification**: Other users can verify the claim by signing it.
3️⃣ **Alibi Confirmation**: If at least **two witnesses approve**, the alibi is marked as **verified**.
4️⃣ **Retrieval**: The user (or others) can retrieve the verified record anytime.

## 📖 Getting Started

### 1️⃣ Requirements

- ✅ Solidity-compatible blockchain (Ethereum, Polygon, etc.)
- ✅ Web3 wallet (e.g., MetaMask)
- ✅ Smart contract deployment tools (Remix, Hardhat, or Foundry)

### 2️⃣ Deployment

1. Clone this repository:
   ```sh
   git clone https://github.com/your-repo/decentralized-alibi.git
   cd decentralized-alibi
   ```
2. Deploy the contract using Remix or Hardhat.
   ```sh
   npx hardhat compile
   npx hardhat run scripts/deploy.js --network goerli
   ```
3. Get the deployed contract address and interact using Web3.js or Ethers.js.

### 3️⃣ Interaction

Users can interact with the contract via a Web3-enabled frontend or directly through blockchain explorers like Etherscan.

## 💡 Example Use Cases

| Use Case                  | Description                             |
| ------------------------- | --------------------------------------- |
| ⚖️ Legal Proof            | Prove presence at a specific time/place |
| 🎤 Event Verification     | Confirm attendance at events            |
| 🔎 Private Investigations | Provide anonymous alibi verification    |
| 🏆 Reputation System      | Build a provable presence history       |
