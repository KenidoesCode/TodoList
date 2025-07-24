# ✅ TodoList Smart Contract

A simple yet powerful Ethereum smart contract to manage your daily tasks directly on the blockchain! Built using Solidity by a passionate beginner learning through **YouTube tutorials** and **ChatGPT guidance**. 🎥🤖

---

## 🧠 What I Learned in My Second Solidity Project

> After building my first wallet, I wanted to take it one step further. This TodoList taught me about **structs**, **arrays**, and more real-world logic. Here's what I picked up:

### 🔍 Key Concepts Understood

- ✅ How to define and use `struct` for creating task objects
- ✅ Storing multiple items using a `Task[]` dynamic array
- ✅ How `public` lets you view contract variables from outside
- ✅ Writing functions to add new tasks and read specific ones
- ✅ Using `for` loops in Solidity to search for tasks by ID
- ✅ Toggling boolean values (`true` ↔ `false`) with `!` operator
- ✅ Error handling using `revert()`

---

## 🛠️ Contract Features

| 🔧 Function       | 💡 What It Does                                      |
|------------------|------------------------------------------------------|
| `addTask()`       | Add a new task with description and ID              |
| `getTask()`       | Fetch a task’s details using its unique ID          |
| `toggleTask()`    | Flip task status between completed and not completed|

---

## 🧪 How to Use It (via Remix)

1. Go to [Remix IDE](https://remix.ethereum.org)
2. Create a new file `TodoList.sol` and paste the contract code
3. Compile using version `0.8.0` or above
4. Deploy to local VM or Injected Web3 (MetaMask)
5. Use the UI to:
   - 🆕 Add a task
   - 🔍 Get a task by ID
   - 🔁 Toggle a task's status (complete/incomplete)

---

## 📦 Contract Code Snapshot

```solidity
Task[] public alltasks;
uint public currentId = 1;

function addTask(string memory description) public {
    alltasks.push(Task(currentId, description, false));
    currentId++;
}
