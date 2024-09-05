# 这段脚本是一个用于执行 Python 脚本的 Bash 脚本。它接受一个参数作为项目目录，然后进入该目录并运行一个 Python 脚本。
# 下面是对每一行的详细解释：
#!/bin/bash
#这一行是 shebang 行，它指定了这个脚本的解释器是 Bash。这样，当你执行这个脚本时，系统知道使用哪个程序来运行它。
PROJECT_DIR=$1
#这一行将脚本的第一个参数 $1 赋值给变量 PROJECT_DIR。这个参数应该是脚本运行时传递的项目目录路径。
cd $PROJECT_DIR
#这一行将当前工作目录切换到 $PROJECT_DIR 变量指定的目录。这样，后续的命令将会在这个目录下执行。
python $PROJECT_DIR/src/data/download_data_local.py --path_data_folder $PROJECT_DIR/data
#这一行执行 Python 脚本 download_data_local.py，并将 --path_data_folder 参数传递给它。该参数的值是 $PROJECT_DIR/data，
#这是一个数据目录的路径。python 命令会运行指定的 Python 脚本，并将该路径作为参数传递给脚本。
