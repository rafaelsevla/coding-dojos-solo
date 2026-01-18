## Desafios:

<details>
  <summary><b>Roman Numerals Kata - 18/01/2026</b></summary>
<br>

[codigo](https://github.com/rafaelsevla/coding-dojos-solo/blob/main/lib/roman_numerals_kata.rb) | [spec](https://github.com/rafaelsevla/coding-dojos-solo/blob/main/spec/roman_numerals_kata_spec.rb)

## 🥋 Roman Numerals Kata — Regras

### 🎯 Objetivo

Converter **números arábicos (inteiros)** em **números romanos**.

---

## 📥 Entrada

Um número inteiro positivo.

```
1
5
14
1994
```

---

## 📤 Saída

Uma **string** representando o número em **algarismos romanos**.

```
"I"
"V"
"XIV"
"MCMXCIV"
```

---

## 🔢 Símbolos básicos

| Valor | Símbolo |
| ----: | :------ |
|     1 | I       |
|     5 | V       |
|    10 | X       |
|    50 | L       |
|   100 | C       |
|   500 | D       |
|  1000 | M       |

---

## 📜 Regras de composição

### 1️⃣ Repetição

* Um símbolo pode ser repetido até **3 vezes seguidas**

```
1  → I
2  → II
3  → III
```

---

### 2️⃣ Subtração

* Quando um símbolo menor vem antes de um maior, ele é **subtraído**
* Apenas estas combinações são permitidas:

```
IV → 4
IX → 9
XL → 40
XC → 90
CD → 400
CM → 900
```

---

### 3️⃣ Ordem

* Os símbolos devem ser organizados do **maior para o menor**
* Exceto nos casos de subtração

---

## 🧮 Casos de referência (Entrada → Saída)

```
1    → I
2    → II
3    → III
4    → IV
5    → V
9    → IX
10   → X
14   → XIV
19   → XIX
40   → XL
50   → L
90   → XC
100  → C
400  → CD
500  → D
900  → CM
1000 → M
1994 → MCMXCIV
```

---

## 🚫 Limites (opcional para o dojo)

* Considere números de **1 até 3999**


</details>

<details>
  <summary><b>String Calculator - 18/01/2026</b></summary>
<br>

[codigo](https://github.com/rafaelsevla/coding-dojos-solo/blob/main/lib/string_calculator.rb) | [spec](https://github.com/rafaelsevla/coding-dojos-solo/blob/main/spec/string_calculator_spec.rb)

🎯 Desafio

Crie um método:

```ruby
add(numbers)
```

Que receba uma string e retorne a soma dos números.

📜 Regras (entram uma por vez, via testes)
<br>
Fase 1
```ruby
"" → 0

"1" → 1

"1,2" → 3
```

Fase 2

Permitir qualquer quantidade de números

Quebras de linha também são separadores:
```ruby
"1\n2,3" → 6
```
Fase 3

Separadores customizados:
```ruby
"//;\n1;2" → 3
```

Fase 4

Números maiores que 1000 devem ser ignorados:
```ruby
"2,1001" → 2
```
Fase 5

Números negativos não são permitidos

Lançar erro listando todos os negativos:

```ruby
"1,-2,-3" → negatives not allowed: -2, -3
```
</details>


<details>
  <summary><b>FizzBuzz - 17/01/2026</b></summary>
<br>

[codigo](https://github.com/rafaelsevla/coding-dojos-solo/blob/main/lib/fizz_buzz.rb) | [spec](https://github.com/rafaelsevla/coding-dojos-solo/blob/main/spec/fizz_buzz_spec.rb)

Crie uma função que receba um número inteiro n e retorne uma lista de 1 até n seguindo as regras:

Se o número for múltiplo de 3, retorne "Fizz"
Se for múltiplo de 5, retorne "Buzz"
Se for múltiplo de 3 e 5, retorne "FizzBuzz"
Caso contrário, retorne o próprio número

📥 Exemplo

Entrada:
```
n = 15
```

Saída:
```
[1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz",
 11, "Fizz", 13, 14, "FizzBuzz"]
```
</details>
