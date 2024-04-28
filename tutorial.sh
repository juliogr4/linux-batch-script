# ==========================
# ======== CONCEPTS ========
# ==========================

# --- difference between shell vs bash ---
# shell: it's the command line interface (ex: PowerShell, CMD, Bash, Korn shell, C shell, Z shell)
# bash: it's the most used unix/linux shell. It's the default on Linux

# ==========================
# ======== TERMINAL ========
# ==========================

# --- shell type ---
# ps

# --- current directory ---
# pwd

# --- how to create a bash script? ---
# create a file with the extension .sh
# inside the file, add -->    #!/bin/bash
# "#!/bin/bash" is called shebang. # bash  ! bang  

# --- bash shell path ---
# which bash

# --- execute bash script ---
# $ chmod u+rx tutorial.sh   -->   make the script executable
    # chmod: modifies the ownership of a file for the current user :u.
    # +x: adds the execution rights to the current user.
    # run_all.sh is the file we wish to run.
# run the script
    # ./run_all.sh
    # sh run_all.sh
    # bash run_all.sh

# --- display dollar sign ($) in the prompt ---
# PS1="$"

# === FILE MANAGMENT ===

    # --- listing files ---
    # ls

    # --- create a file ---
    # (1) vi <filename>
    # (2) press the key "i" to come into the edit mode
    # (3) Press "ESC" to come out of the edit mode.
    # (4) Press Shift + ZZ to come out of the file completely.
    # For edition, follow the same step

    # --- copying files ---
    # cp source_file destination_file

    # --- rename file ---
    # mv old_name new_name

    # --- delete file ---
    # rm filename

    # --- see content of a file
    # cat filename

# === DIRECTORY ===

    # --- current directory ---
    # pwd

    # --- home directory ---
    # cd ~

    # --- last directory ---
    # cd -

    # --- create directory ---
    # mkdir dirname

    # --- remove directory ---
    # rmdir dirname

    # --- renaming directory ---
    # mv oldDirName newDirName

    # --- change a directory ---
    # cd <folder name>

# ==========================
# ========== CODE ==========
# ==========================

#!/bin/sh

#--- variables ---
echo "===== VARIABLES ====="
VARIABLE="Variable"
NUMBER_1=5
NUMBER_2=10
TOTAL=`expr $NUMBER_1 + $NUMBER_2`
readonly READONLY_VARIABLE="Readonly Variable"        # value cannot be changed

echo "Printing variable = $VARIABLE"
echo "The sum between $NUMBER_1 and $NUMBER_2 = $TOTAL"

#--- condition ---

# if
echo "===== IF ====="
if [ $NUMBER_1 -gt $NUMBER_2 ]; then
    echo "$NUMBER_1 is greater than $NUMBER_2"
elif [ $NUMBER_1 -eq $NUMBER_2 ]; then
    echo "numbers are equal"
else 
    echo "$NUMBER_2 is greater than $NUMBER_1"
fi

# for in
echo "===== FOR IN ====="
for i in {1..5}
do
    echo "$i"
done

# while
echo "===== WHILE LOOP ====="
i=0
while [[ $i -le $NUMBER_2 ]] ; do
    echo "$i"
    i=`expr $i + 1`
done

# function
Sum() {
    return `expr $1 + $2`
}

Sum 5 32

soma=$?
echo "The sum between $1 and $2 = $soma"
