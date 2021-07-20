FROM mcr.microsoft.com/dotnet/sdk:5.0 AS base
ARG DX_NUGET_URL
ARG LOCAL_DX_NUGET_URL=test
COPY . /.
RUN echo $LOCAL_DX_NUGET_URL
RUN echo $DX_NUGET_URL
RUN dotnet restore "TestGitHubSecretsWithDocker.csproj" -s $LOCAL_DX_NUGET_URL -s https://api.nuget.org/v3/index.json
RUN dotnet build
ENTRYPOINT ["dotnet", "bin/Release/net5.0/Release/TestGitHubSecretsWithDocker.dll"]