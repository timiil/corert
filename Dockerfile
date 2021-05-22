FROM mcr.microsoft.com/dotnet/sdk:5.0

MAINTAINER timiil@163.com

ENV TZ=Asia/Shanghai

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
   apt-get update -y && apt-get upgrade -y && apt-get install -y nano clang zlib1g-dev libkrb5-dev libncurses5 ssh iputils-ping
