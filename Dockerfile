FROM mcr.microsoft.com/dotnet/core/sdk:5
MAINTAINER timiil@163.com

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y nano clang zlib1g-dev libkrb5-dev