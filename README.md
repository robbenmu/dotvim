dotvim
======

### 使用方法
1. git clone https://github.com/robbenmu/dotvim .vim
2. ln -s .vim/vimrc .vimrc
3. cd .vim; git submodule init; git submodule update;
4. 安装依赖:ag、cmake、fecs(npm);
5. 打开vim，自动安装插件
6. 进入.vim/bundle/YouCompleteMe目录,编译make
7. 进入.vim/bundle/tern-for-vim目录，执行git submodule update --init --recursive
7. 进入.vim/bundle/vim-jsbefautify目录，执行npm i
8. 进入.vim/vim_template目录,修改模板,模板config在config.vim, 详情见http://blog.csdn.net/orangleliu/article/details/41902851


