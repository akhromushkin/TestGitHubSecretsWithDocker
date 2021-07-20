FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
ARG DX_NUGET_URL
RUN dotnet restore "TestGitHubSecretsWithDocker.csproj" -s $DX_NUGET_URL -s https://api.nuget.org/v3/index.json
RUN dotnet build
ENTRYPOINT ["dotnet", "bin/Release/net5.0/Release/TestGitHubSecretsWithDocker.dll"]