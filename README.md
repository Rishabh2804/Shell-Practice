<h1 align="center">-: Shell Scripting NOTES :-</h1>

## echo :
1. ```shell
    echo "Hello World" # Hello World
   ```

2. ```shell
    echo -e "Hello \n World" 
   ```
    > -e flag is used to enable escape sequences

    > \n is used to print new line

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
    > -n flag is used to print without new line
    
<br>

## read :
1. ``` shell
    read var1 var2 var3
   ```
    > read is used to take input from user

    > var1, var2, var3 are variables
    
    > var1 will store first word, var2 will store second word and so on

2. ```shell
    echo "Enter your name: "    
    read name
   ```

3. Alternative way for #2. 
   <br>   
   ```shell
    read -p "Enter your name: " name
   ``` 
    > -p flag is used to print message before taking input

    > name will store the input

<br>

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

<br>

## printf :        
```shell
printf [-v var] format [arguments...]
```

1. ```shell
    printf "Hello World" # Hello World
   ```

2. ```shell
    printf "Hello \n World" # Hello \n World
   ```

3. ```shell
    printf "%s %s" "Hello" "World" # Hello World
   ```

4. Format specifiers :
    - %s : string
    - %d : decimal
    - %f : float
    - %c : character

5. Format modifiers :
    > **\<N>** : N number of spaces; N is a number
        
        - %5s : 5 spaces
        - %5.2f : 5 spaces with 2 decimal places        

    > **\-** : left justify **(default is right justify)**

6. ```shell
    printf "%s %s" "Hello" "World" # Hello World
    printf "%s %s" "Hello" "World" > file.txt # file.txt will contain "Hello World"
   ``` 
    > **\>** is used to redirect output to a file

<br>

## arrays :
1. Declaration :
   ```shell
    declare -a arr
   ```
    > -a flag is used to declare an array

2. Direct allocation :
   ```shell
    arr=(1 2 3 4 5)
   ```

3. Input : 
   ```shell
    read -a arr
    ```

4. Accessing array elements :
   ```shell
    echo ${arr[0]} # 1
    echo ${arr[1]} # 2
    echo ${arr[2]} # 3
    echo ${arr[3]} # 4
    echo ${arr[4]} # 5
   ```

5. Print array :
   ```shell
    echo ${arr[@]} # 1 2 3 4 5
    # or
    echo ${arr[*]} # 1 2 3 4 5
   ```
   > @ and * is used to print all elements of array

6. Print a range :
   ```shell
    echo ${arr[@]:0:3} # 1 2 3
    # or
    echo ${arr[*]:0:3} # 1 2 3
   ```
   > ${arr[@]:start:end} : start is the starting index and end is the number of elements to be printed