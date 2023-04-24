# 如何从零开始搭建一个wasm vm


1. 执行器  指令集/执行器/内存

2. 外设 输入输出

3. 系统调用（功能输出）

### bitcoin

指令集：
https://github.com/btcsuite/btcd/blob/master/txscript/opcode.go

执行:
https://github.com/btcsuite/btcd/blob/52ede324beb9502f4acf59d24219663bcd14d566/txscript/engine.go#L1028

example:
<Signature> <Public Key> | OP_DUP OP_HASH160 <Public KeyHash> OP_EQUAL OP_CHECKSIG

指令｜指令+数据 配合栈来运行

### eth:

作为很专用的一个vm， 三个部分其实是混在一起的

指令集：
https://github.com/ethereum/go-ethereum/blob/master/core/vm/opcodes.go
https://github.com/ethereum/go-ethereum/blob/d3ece3a07ca5617476f11e909904c847bc096714/core/vm/jump_table.go

解释执行器：
指令对应的行为 https://github.com/ethereum/go-ethereum/blob/d3ece3a07ca5617476f11e909904c847bc096714/core/vm/instructions.go
执行代码 https://github.com/ethereum/go-ethereum/blob/d3ece3a07ca5617476f11e909904c847bc096714/core/vm/interpreter.go#L105

内存管理:
https://github.com/ethereum/go-ethereum/blob/d3ece3a07ca5617476f11e909904c847bc096714/core/vm/memory.go


```go
000 PUSH1 80 - LINE 5
002 PUSH1 40 - LINE 5
004 MSTORE - LINE 5
005 CALLVALUE - LINE 5
006 DUP1 - LINE 5
007 ISZERO - LINE 5
008 PUSH2 0010 - LINE 5
011 JUMPI - LINE 5
012 PUSH1 00 -
014 DUP1 -
015 REVERT -
016 JUMPDEST - LINE 5
017 POP - LINE 5
018 PUSH1 04 - LINE 5
020 CALLDATASIZE - LINE 5
021 LT - LINE 5
022 PUSH2 0036 - LINE 5
025 JUMPI - LINE 5
026 PUSH1 00 - LINE 5
028 CALLDATALOAD - LINE 5
029 PUSH1 e0 - LINE 5
031 SHR - LINE 5
032 DUP1 - LINE 5
033 PUSH4 6d4ce63c - LINE 5
038 EQ - LINE 5
039 PUSH2 003b - LINE 5
042 JUMPI - LINE 5
043 DUP1 -
044 PUSH4 a6f9dae1 -
049 EQ -
050 PUSH2 0059 -
053 JUMPI -
054 JUMPDEST -
055 PUSH1 00 -
057 DUP1 -
058 REVERT -
059 JUMPDEST -
060 PUSH2 0043 -
063 PUSH2 0075 -
066 JUMP -
067 JUMPDEST -
068 PUSH1 40 -
070 MLOAD -
071 PUSH2 0050 -
074 SWAP2 -
075 SWAP1 -
076 PUSH2 0145 -
079 JUMP -
080 JUMPDEST -
081 PUSH1 40 -
083 MLOAD -
084 DUP1 -
085 SWAP2 -
086 SUB -
087 SWAP1 -
088 RETURN -
089 JUMPDEST -
090 PUSH2 0073 -
093 PUSH1 04 -
095 DUP1 -
096 CALLDATASIZE -
097 SUB -
098 DUP2 -
099 ADD -
100 SWAP1 -
101 PUSH2 006e -
104 SWAP2 -
105 SWAP1 -
106 PUSH2 01ca -
109 JUMP -
110 JUMPDEST -
111 PUSH2 00b2 -
114 JUMP -
115 JUMPDEST -
116 STOP -
117 JUMPDEST -
118 PUSH1 60 -
120 PUSH1 40 -
122 MLOAD -
123 DUP1 -
124 PUSH1 40 -
126 ADD -
127 PUSH1 40 -
129 MSTORE -
130 DUP1 -
131 PUSH1 0f -
133 DUP2 -
134 MSTORE -
135 PUSH1 20 -
137 ADD -
138 PUSH32 48656c6c6f20436f6e7472616374730000000000000000000000000000000000 -
171 DUP2 -
172 MSTORE -
173 POP -
174 SWAP1 -
175 POP -
176 SWAP1 -
177 JUMP -
178 JUMPDEST -
179 POP -
```

### ckb-vm

risc-v 指令机器运算 https://github.com/nervosnetwork/ckb-vm/tree/develop/src/instructions

中间指令定义 https://github.com/nervosnetwork/ckb-vm/blob/develop/src/machine/asm/cdefinitions_generated.h

rust执行器 https://github.com/nervosnetwork/ckb-vm/blob/673fe2ded8514fe0fdf983e3968f72ef22e5d6bc/src/machine/mod.rs#L608

asm执行器 边转换边执行 https://github.com/nervosnetwork/ckb-vm/blob/673fe2ded8514fe0fdf983e3968f72ef22e5d6bc/src/machine/asm/mod.rs#L483

系统调用使用risc-v原生指令来处理 ecall

### wagon

wasm指令 https://github.com/tetratelabs/wazero/blob/main/internal/wasm/instruction.go

中间指令定义 https://github.com/tetratelabs/wazero/tree/main/internal/wazeroir

编译转换 https://github.com/tetratelabs/wazero/blob/a7e1e693b912e97445600b7e21691e521caf3f8f/internal/engine/compiler/engine.go#L534-L551

asm转换 https://github.com/tetratelabs/wazero/blob/main/internal/asm/amd64/impl.go

原生ir解释器 https://github.com/tetratelabs/wazero/tree/main/internal/engine/interpreter

### fvm

wasm指令  https://github.com/bytecodealliance/wasm-tools/blob/main/crates/wasmparser/src/readers/core/operators.rs

中间指令定义  https://github.com/bytecodealliance/wasmtime/blob/main/cranelift/codegen/src/ir

编译转换 https://github.com/bytecodealliance/wasmtime/tree/main/cranelift/wasm/src

asm转换 https://github.com/bytecodealliance/wasmtime/tree/main/cranelift/codegen/src/isa

原声解释器 https://github.com/bytecodealliance/wasmtime/tree/main/cranelift/interpreter
