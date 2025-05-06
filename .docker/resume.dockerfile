FROM pandoc/latex:2.9

# 设置环境变量
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# 安装必要的工具
# RUN apt-get update && apt-get install -y wget fontconfig

# 下载中文字体文件
# RUN wget -O /usr/share/fonts/simsun.ttf
# <字体文件URL>

# 将本地字体文件复制到容器中
# COPY fonts/YaHeiMonacoHybrid.ttf /usr/share/fonts/YaHeiMonacoHybrid.ttf

# 更新字体缓存
RUN fc-cache -fv

# 打印字体列表
RUN fc-list : family

RUN apk add make texlive

ENV TEXMF /usr/share/texmf-dist

COPY actions/entrypoint.sh /entrypoint.sh
