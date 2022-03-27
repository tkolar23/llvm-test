import subprocess
import argparse
from pathlib import Path

def ConvertToLL(filename, arch):
    cFilePath = "./cFiles/" + filename + ".c"
    unoptFilePath = "./llFiles/unopt/" + filename + "_unopt.ll"
    optFilePath = "./llFiles/" + filename + ".ll"
    
    if not Path(cFilePath).is_file():
        print(f'The file \"{cFilePath}\" does not exist')
        return
    
    clangFlags = f'-S -emit-llvm -O3 -Xclang -disable-llvm-passes --target={arch}'
    subprocess.run(['clang'] + clangFlags.split() + [cFilePath] + ['-o'] + [unoptFilePath])
    
    optFlags = '-S -mem2reg -instnamer'
    subprocess.run(['opt'] + optFlags.split() + [unoptFilePath] + ['-o'] + [optFilePath])
    
def ConvertToS(filename, arch, cpu, viewDiagram):
    llFilePath = "./llFiles/" + filename + ".ll"
    sFilePath = "./sFiles/" + filename + ".s"
    
    if not Path(llFilePath).is_file():
        print(f'The file \"{llFilePath}\" does not exist')
        return
    
    llcFlags = f'{viewDiagram} -march={arch} -mcpu={cpu} --asm-verbose --asm-show-inst'
    subprocess.run(['llc'] + llcFlags.split() + [llFilePath] + ['-o'] + [sFilePath])

if __name__ == '__main__':
    # Default configuration
    arch = 'thru'
    cpu = 'generic'
    viewDiagram = ''
    
    # Instantiate parser
    parser = argparse.ArgumentParser(description='Convert C to LLVM IR')
    
    ##===========##
    ## Arguments ##
    ##===========##
    # Architecture/CPU
    parser.add_argument('-march', default='thru', required=False, help='Supported: thru, riscv')
    
        
    # SelectionDAG Diagrams
    parser.add_argument('-view-dag-combine1-dags', '--vdag0', 
                        action='store_true', 
                        help='displays the DAG after being built, before the first optimization pass')
    parser.add_argument('-view-legalize-dags', '--vdag1', 
                        action='store_true', 
                        help='displays the DAG before Legalization')
    parser.add_argument('-view-dag-combine2-dags', '--vdag2', 
                        action='store_true', 
                        help='displays the DAG before the second optimization pass')
    parser.add_argument('-view-isel-dags', '--vdag3', 
                        action='store_true', 
                        help='displays the DAG before the Select phase')
    parser.add_argument('-view-sched-dags', '--vdag4', 
                        action='store_true', 
                        help='displays the DAG before Scheduling')

    # Filename
    parser.add_argument('filename')
    
    
    ##=========##
    ## Parsing ##
    ##=========##
    # Parse the arguments now
    args = parser.parse_args()
    
    # Architecture/CPU
    if args.march == 'riscv':
        arch = 'riscv64'
        cpu = 'generic-rv64'
        
    # SelectionDAG Diagrams
    if args.vdag0:
        viewDiagram = '-view-dag-combine1-dags'
    elif args.vdag1:
        viewDiagram = '-view-legalize-dags'
    elif args.vdag2:
        viewDiagram = '-view-dag-combine2-dags'
    elif args.vdag3:
        viewDiagram = '-view-isel-dags'
    elif args.vdag4:
        viewDiagram = '-view-sched-dags'
    
    ConvertToLL(args.filename, arch)
    ConvertToS(args.filename, arch, cpu, viewDiagram)
    