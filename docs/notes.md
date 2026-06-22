# Solidity Notes

## string

Stores text values.

Example:

string public message;

---

## uint256

Stores positive integer numbers.

Example:

uint256 public count;

---

## public

Allows anyone to read the value.

---

## function

Defines actions inside a contract.

---

## require()

Validates conditions before execution.

Example:

require(count > 0, "Count cannot be negative");

---

## constructor()

Runs only once during deployment.

---

## msg.sender

Address that executed the transaction.

---

## owner

Contract owner address.
