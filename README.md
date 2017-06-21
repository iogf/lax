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

pip2 install lax

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

