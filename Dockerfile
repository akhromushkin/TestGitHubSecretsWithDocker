FROM mcr.microsoft.com/dotnet/sdk:5.0 AS base
ARG DX_NUGET_URL
ARG ARG_DX_NUGET_URL
COPY . /.
RUN dotnet restore "TestGitHubSecretsWithDocker.csproj" -s $DX_NUGET_URL -s $ARG_DX_NUGET_URL -s https://api.nuget.org/v3/index.json
# RUN dotnet build
# ENTRYPOINT ["dotnet", "bin/Release/net5.0/Release/TestGitHubSecretsWithDocker.dll"]