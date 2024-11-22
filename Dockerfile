# Build
FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS build
WORKDIR /app
COPY . .
RUN dotnet restore "TestConsole/TestConsole/TestConsole.csproj"
RUN dotnet build "TestConsole/TestConsole/TestConsole.csproj"
