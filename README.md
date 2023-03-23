<h1 align="center">-: Shell Scripting NOTES :-</h1>

## echo :
1. ```shell
    echo "Hello World" # Hello World
   ```

2. ```shell
    echo -e "Hello \n World" 
   ```
    - -e flag is used to enable escape sequences
    - \n is used to print new line

3. ```shell
    echo "a"
    echo "b"
    # Output :
    a
    b

    echo -n "a"
    echo -n "b"
    # Output : 
    ab
   ```
    - -n flag is used to print without new line
    
## read :
1. ``` shell
    read var1 var2 var3
   ```
    - read is used to take input from user
    - var1, var2, var3 are variables
    - var1 will store first word, var2 will store second word and so on

2. ```shell
    echo "Enter your name: "    
    read name
   ```

3. Alternative way for #2. 
   &NewLine;   
   ```shell
    read -p "Enter your name: " name
   ``` 
    - -p flag is used to print message before taking input
    - name will store the input

## expr :
1. ```shell 
    `expr 2 + 3`  # 5
    `expr 2 \* 3` # 6
    `expr 2 / 3`  # 0
    `expr 2 % 3`  # 2
    `expr 2 - 3`  # -1
   ``` 
2. ```shell
    `expr $a + $b`
    
    # is same as 

    $(expr $a + $b)   
   ``` 
3. ```shell
    `expr $a + $b`

    # is same as 

    $(($a + $b))
   ``` 