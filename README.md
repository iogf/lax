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

When using multiplication, the usual notation for 
x2 is x * 2 but 2 * x is usually written as 2x.

    tau@eletron:~$ lax -c 'x * 2'    
    x\cdot2
    tau@eletron:~$ lax -c '2 * x'    
    2x
    tau@eletron:~$ 
    

    tau@eletron:~$ lax -c ' x * 3 * 3 * y'
    x\cdot3\cdot3y

However the usual way to write 3 * 3 * x  * y:.

  [tau@sigma ~]$ lax -c '3 * 3 * x  * y'
  3\cdot3xy
  
The python operator ^ is used for roots. 

  [tau@sigma ~]$ lax -c '((x-1) ^ ((x-1)/(x+2)))/(y-z+k-e+w)'
  \frac{\sqrt[\left(x-1\right)]{\left(\frac{x-1}{x+2}\right)}}{y-z+k-e+w}

Using exponents:

  [tau@sigma ~]$ lax -c '2 ** (x - 2)'
  2^{\left(x-2\right)}
  
With roots:

  [tau@sigma ~]$ lax -c ' 2 ^ x - 2 * 2'
  \sqrt[2]{\left(x-2\cdot2\right)}
  

  
