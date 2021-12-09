## :wrench: Tecnologias

- [GCC](https://gcc.gnu.org/)
- [Bison](https://www.gnu.org/software/bison/)
- [Flex](hhttps://westes.github.io/flex/manual/)

## :rocket: Como iniciar

- **Pré Requisitos**: É necessário ter **GCC**, **Bison** e **Flex** para executar esse projeto

- **Clone o repositório**:

```
    $ git clone https://github.com/JoaoVasconcelosV/compiladores
```

**Execute em um terminal:**

```
  make
```

## :rocket: Como utilizar a linguagem

**Início e fim do programa**
```
  ini
    ...
  fim
```

**Observações**:
- Todas as variaveis devem ser inicializados com 0(Até mesmo do tipo texto) 
- Necessario utilizar "&" antes de todas as variaveis
```
 ini
 inteiro &x = 0
 fim
```

**Tipos**
```
 ini
 inteiro &x = 0
 real &y = 0
 texto &t = 0
 fim
```

**Ler e imprimir var números**
```
 ini
 ler(&num)
 mostrar(&num)
 fim
```

**Ler e imprimir var textos**
```
 ini
 lerString(&text)
 mostrarString(&nome)
 fim
```

**Escrever texto**
```
 ini
 escrever("Texto")
 fim
```

**Operações**
```
 ini
 inteiro &num = 0
 &num = &num + 2
 &num = &num - 2
 &num = &num * 2
 &num = &num / 2
 fim
```

**Condicionais**
```
 ini
 inteiro &nota = 10
 se(&nota >= 7){
  escrever("Aprovado")
 }
 senao {
  escrever("Reprovado")
 }
 fim
```

**Laço de repeticao**
```
 ini
 inteiro &i = 0
 enquanto(&i < 5){
  escrever(&i)
  &nota = &i + 1
 }
 fim
```

**Comentarios**
```
 ini
 //seu comentario
 fim
```

**Pular de linha**
```
 ini
 quebraLinha()
 fim
```
