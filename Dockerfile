FROM mcr.microsoft.com/dotnet/sdk:6.0

MAINTAINER timiil@163.com

ENV TZ=Asia/Shanghai

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y tzdata nano clang zlib1g-dev libkrb5-dev libncurses5 ssh iputils-ping && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
