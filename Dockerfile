# Build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app
COPY . .
RUN dotnet restore "TestConsole/TestConsole/TestConsole.csproj"
#RUN dotnet publish -c Release -o out
