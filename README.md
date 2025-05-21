# ULA

## 🔹 O que é uma ULA (ALU)?

A **ULA (Unidade Lógica e Aritmética)**, ou **ALU (Arithmetic and Logic Unit)**, é o componente central responsável por realizar **operações matemáticas e lógicas** em processadores e sistemas digitais.

---

## 🔹 Funcionalidades da ULA do repositório

No repositório, a ULA suporta as seguintes operações:

| OpCode | Operação    | Descrição           |     |
| ------ | ----------- | ------------------- | --- |
| 000    | Soma        | `A + B`             |     |
| 001    | Subtração   | `A - B`             |     |
| 010    | AND lógico  | `A & B`             |     |
| 011    | OR lógico   | \`A                 | B\` |
| 100    | XOR lógico  | `A ^ B`             |     |
| 101    | NOT A       | `~A` (negação de A) |     |
| 110    | Shift Left  | `A << 1`            |     |
| 111    | Shift Right | `A >> 1`            |     |

---

## 🔹 Interface da ULA (em Verilog)

Exemplo baseado em `src/ula.v`:

```verilog
module ula (
    input  wire [3:0] A,     // Operando A
    input  wire [3:0] B,     // Operando B
    input  wire [2:0] Op,    // Código da operação (opcode)
    output reg  [3:0] S      // Resultado da operação
);

always @(*) begin
    case (Op)
        3'b000: S = A + B;
        3'b001: S = A - B;
        3'b010: S = A & B;
        3'b011: S = A | B;
        3'b100: S = A ^ B;
        3'b101: S = ~A;
        3'b110: S = A << 1;
        3'b111: S = A >> 1;
        default: S = 4'b0000;
    endcase
end

endmodule
```

---

## 🔹 Testbench

No repositório, há testbenches como `sim/ula_tb.v` que testam a ULA com diferentes operações, mostrando que os resultados variam conforme o **opcode** fornecido.

### Exemplo de estímulo:

```verilog
initial begin
    A = 4'b0011; B = 4'b0001;

    Op = 3'b000; #10; // Soma: 3 + 1 = 4
    Op = 3'b001; #10; // Subtração: 3 - 1 = 2
    Op = 3'b010; #10; // AND: 3 & 1 = 1
    ...
end
```

---

## 🔹 Como usar a ULA

1. **Clone o repositório**

   ```bash
   git clone https://github.com/miguelsrrobo/ULA
   cd ULA
   ```

2. **Abra o projeto** no Quartus, Vivado, ModelSim ou outro simulador.

3. **Compile o código** Verilog ou VHDL em `src/`.

4. **Rode o testbench** em `sim/` para verificar os resultados das operações.

---

## 🔹 Aplicações

* ALUs reais de processadores simples
* Simulações de CPUs educacionais (como SAP-1)
* Ensino de arquitetura de computadores
* Prática com operações binárias e lógica em Verilog/VHDL
