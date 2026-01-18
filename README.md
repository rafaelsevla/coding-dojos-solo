## Desafios:

<details>
  <summary><b>String Calculator - 18/01/2026</b></summary>
<br>

[codigo](https://github.com/rafaelsevla/coding-dojos-solo/blob/main/lib/fizz_buzz.rb) | [spec](https://github.com/rafaelsevla/coding-dojos-solo/blob/main/spec/fizz_buzz_spec.rb)

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
