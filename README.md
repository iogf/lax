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

python setup.py install

That is all.

Usage
=====

    tau@eletron:~$ lax -c 'x * 2'    
    x\cdot2
    tau@eletron:~$ lax -c '2 * x'    
    2x
    tau@eletron:~$ 
    
The usual notation for x2 is x * 2 but 2 * x is usually written as 2x.

    tau@eletron:~$ lax -c ' x * 3 * 3 * x'
    x\cdot3\cdot3x
    tau@eletron:~$ 

With exponents.

    tau@eletron:~$ lax -c '((x-1)/(x-2)) * x'    
    \frac{x-1}{x-2}x

    tau@eletron:~$ lax -c '(x-1)/(x-2) * x'
    \frac{x-1}{x-2}x

    tau@eletron:~$ lax -c '(x-1)/(x-2) * x'
    \frac{x-1}{x-2}x

    tau@eletron:~$ lax -c 'x/(x-2) * (x-1)'
    \frac{x}{x-2}\left(x-1\right)

    tau@eletron:~$ lax -c '(x-1)*x/(x-2)'
    \frac{\left(x-1\right)x}{x-2}

    tau@eletron:~$ lax -c '(x*(x-1))/(x-2)'
    \frac{x\left(x-1\right)}{x-2}

    tau@eletron:~$ lax -c '((x-1) ** ((x-1)/(x+2)))/(y-z+k-e+w)'
    \frac{\sqrt[\left(\frac{x-1}{x+2}\right)]{\left(x-1\right)}}{y-z+k-e+w}

    tau@eletron:~$     


I'll implement other functionalities soon.





