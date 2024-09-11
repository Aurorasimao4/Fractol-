# Fractol

**Fractol** é um projeto desenvolvido na Ecole 42 que visa gerar e visualizar fractais matemáticos, como o Conjunto de Mandelbrot e o Conjunto de Julia. Este projeto é uma oportunidade para aprender e aplicar conceitos de matemática, gráficos e programação em C, utilizando a biblioteca MiniLibX para renderização gráfica.

## Objetivo

O objetivo do projeto é criar uma aplicação que permita visualizar fractais em diferentes formatos e com diferentes parâmetros. A aplicação deve permitir a interação do usuário, como o zoom e a mudança de parâmetros, para explorar as propriedades dos fractais.

## Funcionalidades

- **Visualização do Conjunto de Mandelbrot**: Exiba o famoso conjunto de Mandelbrot e permita que o usuário explore a imagem com zoom e deslocamento.
- **Visualização do Conjunto de Julia**: Exiba o conjunto de Julia com diferentes parâmetros e permita ao usuário explorar as variações.
- **Interatividade**: Permita que o usuário interaja com a imagem usando o teclado e o mouse para zoom e deslocamento.
- **Parâmetros Customizáveis**: Permita a alteração dos parâmetros dos fractais em tempo real para observar as mudanças na visualização.

## Requisitos

- **Sistema Operacional**: Linux
- **Compilador**: GCC
- **Bibliotecas**:
  - MiniLibX
  - X11 (para suporte gráfico)
  - Xpm (para suporte de imagens)

## Compilação

Para compilar o projeto, você deve ter a biblioteca MiniLibX instalada. Utilize o Makefile incluído no repositório para compilar o projeto. Execute os seguintes comandos:

```bash
git clone https://github.com/Aurorasimao4/fractol.git
cd fractol
make
./fractol mandelbrot
or
./fractol julia <valor do eixo x> <valor do eixo y>
