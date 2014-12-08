#Addit
ARM Assembly script that will prompt the user for two numbers and then add them together. 

**Specifically made and tested on Raspberry PI.**

###Compile & Link
1. Compile: `as -o $addit.o $addit.s`
2. Link: `gcc -o $addit $addit.o`

###Run
1. `./addit`

####Credit To:
Think Geek: for the lovely and by far superior documentation.
Specifically http://thinkingeek.com/2013/02/02/arm-assembler-raspberry-pi-chapter-9/ 
