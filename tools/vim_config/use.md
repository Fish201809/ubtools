8. 使用
以下只介绍上文vimrc配置的功能如何使用，vim本身自带的功能和操作不讨论，有需要的同学请自行google。

快捷键
F2： 启动左侧Taglist窗口
F3： 打开右侧NerdTree窗口
F4： 打开mru窗口显示最近打开过的文件，选择文件回车打开
F5： 窗口上方打开LookupFile搜索窗口，输入文件名或者目录名查找文件，Ctrl-N、Ctrl-P选择，回车打开
F6： 打开vimgrep，输入任意字符进行搜索（相当于shell的grep命令）
F7： 在当前目录下生成filename.tags文件，LookupFile使用该文件进行查找，生成过程中vim不允许操作
F8： 在当前目录下生成GTAGS数据库相关文件，gtags-cscope使用该数据库进行代码查找和跳转
F9： 在当前目录下生成tags文件，供ctags使用
F10： 在当前目录下生成cscope数据库相关文件，cscope基于cscope.out进行代码搜索和跳转
F12： 更新cscope或者GTAGS数据库
; ： 进入底行命令模式
Ctrl - h： 从当前窗口切换到左侧窗口
Ctrl - l： 从当前窗口切换到右侧窗口
Ctrl - k： 从当前窗口切换到上侧窗口
Ctrl - j： 从当前窗口切换到下侧窗口
Ctrl - x： 主动补全
Ctrl - y： 关闭补全列表
Ctrl - n： 补全列表向下选择
Ctrl - p： 补全列表向上选择
Shift - =： “+” 增加当前窗口高度
Shift - -： “_” 减小当前窗口高度
, ： 减小当前窗口宽度
\ ： 增加当前窗口宽度
空格 lt： 打开LookupFile按tags搜索文件
空格 lb： 打开LookupFile按vim缓冲区搜索文件
空格 lw： 打开LookupFile按目录搜索文件
空格 mm： man查找当前光标所在函数
空格 m2： man 2查找当前光标所在函数（系统调用）
空格 m3： man 3查找当前光标所在函数（库函数）
空格 fs： 查找并跳转到当前光标所在标识符出现的地方
空格 fg： 查找并跳转到当前光标所在标识符的定义处
空格 fd： 查找并跳转到被当前光标所在函数调用的函数
空格 fc： 查找并跳转到调用当前光标所在函数的地方
空格 ft： 查找并跳转到当前光标所在的字符串
空格 fe： egrep模式查找并跳转到当前光标所在的字符串
空格 ff： 查找并跳转到当前光标所在的文件名
空格 fi： 查找并跳转到当前文件所包含的文件
空格 fa： 查找并跳转到当前光标所在的标识符被赋值的地方
空格 ss： 查找并水平分割窗口跳转到当前光标所在标识符出现的地方
空格 sg： 查找并水平分割窗口跳转到当前光标所在标识符的定义处
空格 sd： 查找并水平分割窗口跳转到被当前光标所在函数调用的函数
空格 sc： 查找并水平分割窗口跳转到调用当前光标所在函数的地方
空格 st： 查找并水平分割窗口跳转到当前光标所在的字符串
空格 se： egrep模式查找并水平分割窗口跳转到当前光标所在的字符串
空格 sf： 查找并水平分割窗口跳转到当前光标所在的文件名
空格 si： 查找并水平分割窗口跳转到当前文件所包含的文件
空格 sa： 查找并水平分割窗口跳转到当前光标所在的标识符被赋值的地方
空格 vs： 查找并垂直分割窗口跳转到当前光标所在标识符出现的地方
空格 vg： 查找并垂直分割窗口跳转到当前光标所在标识符的定义处
空格 vd： 查找并垂直分割窗口跳转到被当前光标所在函数调用的函数
空格 vc： 查找并垂直分割窗口跳转到调用当前光标所在函数的地方
空格 vt： 查找并垂直分割窗口跳转到当前光标所在的字符串
空格 ve： egrep模式查找并垂直分割窗口跳转到当前光标所在的字符串
空格 vf： 查找并垂直分割窗口跳转到当前光标所在的文件名
空格 vi： 查找并垂直分割窗口跳转到当前文件所包含的文件
空格 va： 查找并垂直分割窗口跳转到当前光标所在的标识符被赋值的地方
p： 在gutentags_plus插件启动gtags-cscope跳转快捷键换出qucikfix窗口是显示光标所在行的预览窗口
P： 在gutentags_plus插件启动gtags-cscope跳转快捷键换出qucikfix窗口是关闭光标所在行的预览窗口
空格 u： quickfix窗口预览窗口向上滚动
空格 d： quickfix窗口预览窗口向下滚动
空格 x： 打开/关闭语法检查
空格 y： 显示语法错误或警告详细信息
空格 p： 跳转到上一处错误或警告
空格 n： 跳转到下一处错误或警告
Tab ： 切换到下一个缓冲区（标签栏下一个）
空格 .： 切换到下一个缓冲区（标签栏下一个）
空格 ,： 切换到下一个缓冲区（标签栏上一个）

genftag脚本
由于Lookupfile插件默认基于ctags产生的索引进行查找文件，ctags本身除了文件信息还有大量的代码标识符等其他信息，这会使得Lookupfile查找速度很慢，所以一般都是专门为Lookupfile建立一个只有文件索引的tags文件。为了方便使用，把建立Lookupfile专用tags文件写成一个shell脚本放到~/.local/bin目录下，命名为genftag，这样只需要在项目根目录下执行：./genftag 命令就可以生成filename.tags供Lookupfile使用了。

#!/bin/sh                                                                                                                                                                              
# generate filename tags for lookupfile plugin
(echo "!_TAG_FILE_SORTED        2       /2=foldcase/";
(find . -not -name '*.o' -not -wholename '*.svn*' -not -wholename '*.git*' -not -regex '.*\.\(png\|gif\)' -type f -printf "%f\t%p\t1\n" | \
sort -f)) > filename.tags

在~/.local/bin目录下新建名为genftag的文件，然后把上面的脚本内容拷贝进去，保存，然后运行：source ~/.profile 或者退出当前用户重新登录系统，就可以在任意目录下使用genftag命令了。

ctags的使用
在项目根目录执行：ctags -R即可生成tags文件，使用vim打开项目目录下的任何文件都会自动向上递归寻找tags文件然后加载。可以在vim里输入 :set tags 查看当前加载的tags文件路径。

ctags在vim的操作：
ctags -R ：在当前目录递归遍历所有子目录生成的tags文件
Ctrl - ] ：跳转到标识符定义处
Ctrl - T：跳转返回
vim -t tag：在tags目录下直接用vim打开tag变量或函数定义的地方
:ts ：列出所有tag列表
:tn ：跳转到下一个tag处
:tp ：跳转到上一个tag处
由于默认ctags -R命令会把所有文件都包好进来，有很多是不需要的非代码文件，这不但会导致tags文件过大，而且还会影响生成tags的速度，同时影响查找跳转的效率，因为多了很多无关信息。所以建议使用如下命令生成tags文件：

ctags -R --c-kinds=+lpxzL --c++-kinds=+lpxzLANU --fields=+niazS --extras=+q --output-format=e-ctags
因为我们使用了universal-ctags，所以要加上 --output-format=e-ctags ，该选项表示生成兼容exuberant-ctags格式的tags文件。

gutentags插件
上一节手动生成tags的方式有一个巨大的不足，就是当你修改了某个文件内容，tags文件是不会自动更新的，必须返回tags目录下手动更新tags，并且tags不支持增量更新，所以相当于重新生成一遍，速度很慢。
为了解决这个问题，就引进了gutentags插件，它支持修改保存文件的时候异步自动更新tags，该插件必需在vim8以上版本才能正常运行。
gutentags会从当前打开文件的目录向上递归查找项目根目录，找到了就会在~/.cache/tags下生成对应项目的tags文件，并且当使用vim打开项目下的文件时自动加载对应的tags，并且当修改保存文件时自动更新tags，而且是异步完成更新，也就是更新过程中还可以正常使用vim，不会卡住不动。
gutentags查找项目根目录的依据是寻找特殊文件，找到就认为该目录是项目根目录，这些特殊文件可以自定义，参考上文vimrc配置里面的gutentags插件配置部分，以下是我的vimrc使用的特殊文件列表：
.root、.svn、.git、.project、workspace
所以如果想让gutentags自动创建自动加载自动更新tags，就需要在工程目录下存在以上特殊文件，没有的话直接touch一个.root空文件就可以了
cscope和gtags-cscope
这两个家伙功能基本一致，使用方法也一样，参考上面快捷键。关于cscope和gtags的介绍请自行google，本文不做详细介绍。cscope使用方法可以在vim命令下输入 :cscope help 获得，配置项详情可以通过 :help cscope 查看，上文的vimrc已经配置好了中文vim帮助手册，查看任何配置项详细介绍只需要在vim命令行输入 :help xxx 即可。
上文vimrc实现了自动检测cscope和gtags数据库，并且自动加载，由于这两者使用的快捷键一样（空格 f、空格 s、空格v 三组快捷键），所以只能二选一，参考我的vimrc配置中关于cscope部分的详细内容，规则如下：

使用vim打开文件自动向上递归查找cscope.out数据库文件
如果找到，则设置cscopegprg = /usr/bin/cscope，自动加载cscope.out，不再加载GTAGS
如果没找到cscope.out，则设置cscopegprg = /usr/local/bin/gtags-cscope，并且从当前文件目录自动向上递归查找GTAGS数据库文件
如果找到，自动加载GTAGS
如果没找到GTAGS，则启动gutentags_plus插件，该插件自动加载在~/.cache/tags/“工程目录名”/ 下面的GTAGS数据库，如果没有该工程目录，则gutentags插件会依据生成tags的同样规则（参考上一节）自动生成当前工程的GTAGS数据库文件
如果gutentags没有找到特殊文件，从而没法确定项目根目录，则认为该文件不属于工程文件，不加载GTAGS
通过上述规则，vim可以自动判断并加装cscope和gtags，而且是优先是用cscope。
另外还有一点，如果启用了gutentags_plus插件，查找跳转快捷键不再是原来自定义的三组快捷键了（空格 f、空格 s、空格v 三组快捷键），因为gutentags_plus插件本身定义了自己的快捷键，并且使用quickfix窗口来显示查找结果，而且可以按p预览，P关闭预览。启用了gutentags_plus插件的快捷键如下：

空格 cs： 查找当前光标所在标识符出现的地方
空格 cg： 查找当前光标所在标识符的定义处
空格 cd： 查找被当前光标所在函数调用的函数
空格 cc： 查找调用当前光标所在函数的地方
空格 ct： 查找当前光标所在的字符串
空格 ce： egrep模式当前光标所在的字符串
空格 cf： 查找当前光标所在的文件名
空格 ci： 查找当前文件所包含的文件
空格 ca： 查找当前光标所在的标识符被赋值的地方
默认不直接跳转，而是打开quickfix窗口显示查找结果，可以选择某个结果按回车跳转，也可以按p预览。

最后
以上只大概介绍了本文的vim配置的部分功能，实际使用中的一些细节无法详细描述，比如还有状态栏主题更换，ALE静态代码检查等等，需要自己亲自体验之后修改vimrc对应部分的配置来实现个性化。本文提供的vimrc基本上每部分都有注释说明，各个配置详细说明还可以通过vim中文帮助 :help xxx 来查看。大家可根据自己需要自行修改。

关于tags、cscope.*、GTAGS、filename.tags等文件的生成和删除，个人建议在~/.bashrc下映射几个常用命令：

# 建立tags文件
alias genctag='ctags -R --c-kinds=+lpxzL --c++-kinds=+lpxzLANU --fields=+niazS --extras=+q --output-format=e-ctags'
# 建立cscope数据库
alias gencsdb='find `pwd` -name "*.[chsS]" -o -name "*.cpp" -o -name "*.cc" -o -name "*.C", -o -name "*.cxx" > cscope.files && cscope -bkq'
# 建立GTAGS数据库
alias gengtag='find . -name "*.[chsS]" -o -name "*.cpp" -o -name "*.cc" -o -name "*.C", -o -name "*.cxx" > gtags.files && gtags'
# 删除tags文件
alias clnctag='rm -rf tags'
# 删除filename.tags文件
alias clngtag='rm -rf GTAGS GRTAGS GPATH gtags.files'
# 删除GTAGS数据库相关文件
alias clncsdb='rm -rf *cscope.*'
# 删除cscope数据库相关文件
alias clnftag='rm -rf filename.tags'


设置好之后运行：source ~/.bashrc 或者退出终端重新登录即可在任意目录下使用以上命令了。

vim还有无数本文没介绍的各种功能插件，有需要的同学请自行添加配置。


--------------------- 
作者：Horizon视界 
来源：CSDN 
原文：https://blog.csdn.net/oaix101125/article/details/85019942 
版权声明：本文为博主原创文章，转载请附上博文链接！


