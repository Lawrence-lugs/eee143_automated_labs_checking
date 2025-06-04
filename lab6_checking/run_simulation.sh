
#!/bin/bash
# usage source run_simulation.sh <student_solution_dir>
if [ -z "$1" ]; then
    echo "Usage: source run_simulation.sh <student_solution_dir>"
    return 1
fi

# check if student_solution_dir exists
if [ ! -d "$1" ]; then
    echo "Directory $1 does not exist."
    return 1
fi

# add patched_files to filelist_student.txt
find patched_files -name "*v" > filelist_student.txt

find $1 -name "*v" >> filelist_student.txt
# This script finds all files with the ".v" extension in the "student_solution" directory
# and writes their paths to "filelist.txt".

# add tb/tb_main.sv to start of filelist.txt
sed -i '1i tb/tb_main.sv' filelist_student.txt

verilator -f filelist_student.txt --binary --exe --Wno-fatal --Wno-lint --Wno-style --Wno-width --Wno-unoptflat --timing
if [ $? -eq 0 ]; then
    echo "Compilation successful, running simulation..."
    ./obj_dir/Vtb_main
else
    echo "Compilation failed."
fi
