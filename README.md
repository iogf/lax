lax
===

A pythonic way of writting latex.

I always found it boring and a pain to write some mathematical
formulaes in latex. Mainly those with a lot of \frac{x}{Y} stuff.

That is why i thought of implementing this small template system
for latex, it is a nap to write some mathematical formulaes
when compared to latex.

Install
=======

Works on python3+ only

    pip install lax

That is all.

Usage
=====

With basic operations:

    [tau@sigma ~]$ lax -c 'x * (2 - y) * yz'
    x\cdot \left(2-y\right)\cdot yz
    [tau@sigma ~]$ 
      
With roots and fractions:

    [tau@sigma ~]$ lax -c '2 ^ x/(2 - y)'
    \sqrt[2]{\left(\frac{x}{2-y}\right)}
        

Notice that to use the root you use ^:

    [tau@sigma ~]$ lax -c '3/2 ^ x * (3-yz)'
    \sqrt[\left(\frac{3}{2}\right)]{\left(x\cdot \left(3-yz\right)\right)}

    [tau@sigma ~]$ lax -c '2 ^ (3 ^ (x - 1))'
    \sqrt[2]{\sqrt[3]{\left(x-1\right)}}

Due to the precedence of ^ in python the / * + - are evaluated first.

With exponents:

    [tau@sigma ~]$ lax -c '2 ** (x - 2)'
    \left(x-2\right)^{2}

    [tau@sigma ~]$ lax -c '(2 ** x) ** 4'
    {\left({2}^{x}\right)}^{4}

    [tau@sigma ~]$ lax -c '2 ** (x ** 4)'
    {2}^{\left({x}^{4}\right)}

With functions:

    [tau@sigma ~]$ lax -c '2 * f((x-2) * 3)/(2-xy)'
    \frac{2\cdot f(\left(x-2\right)\cdot 3)}{2-xy}

    [tau@sigma ~]$ lax -c 'xyz^(alpha(x-2))'
    \sqrt[xyz]{alpha(x-2)}
    [tau@sigma ~]$ 

Notice that if you want to omit multiplication sign you can do:

    [tau@sigma ~]$ lax -c '(x-3)(x+y)'
    \left(x-3\right)\left(x+y\right)

    [tau@sigma ~]$ lax -c '(x-3)(x+y) * 2'
    \left(x-3\right)\left(x+y\right)\cdot 2

    [tau@sigma ~]$ lax -c '(x-3)(x+y)(x-2)(x ** (x-y))'
    \left(x-3\right)\left(x+y\right)\left(x-2\right)\left({x}^{\left(x-y\right)}\right)

    [tau@sigma ~]$ lax -c 'x * (x-2)(x/(x-5))((x-3)/(x**(2-x)))'
    x\cdot \left(x-2\right)\left(\frac{x}{x-5}\right)\left(\frac{x-3}{{x}^{\left(2-x\right)}}\right)

When omiting multiplication sign with functions:


    [tau@sigma ~]$ lax -c 'x * f(x-3)((x-2)/(x-(y^2)))'
    x\cdot \left(f\left(x-3\right)\right)\left(\frac{x-2}{x-\sqrt[y]{2}}\right)

A really convoluted example:

    [tau@sigma ~]$ lax -c 'x * (x-3) (f(x-3) - 2) (x ** (x-3/(x-2)))'
    x\cdot \left(x-3\right)\left(f\left(x-3\right)-2\right)\left({x}^{\left(x-\frac{3}{x-2}\right)}\right)


