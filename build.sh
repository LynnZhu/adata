#!/bin/bash
# 清理之前的构建文件
rm -rf build dist *.egg-info

# 卸载已安装的 adata 旧版本
pip uninstall -y adata

# 打包并生成 wheel 文件
python setup.py sdist bdist_wheel

# 安装到虚拟环境
pip install dist/adata-*.whl

# 一键安装 先进入终端下的gitbash终端，然后执行下列脚本
# ./build.sh