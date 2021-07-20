# FROM mcr.microsoft.com/dotnet/sdk:5.0 AS base
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
ARG DX_NUGET_URL
ARG ARG_DX_NUGET_URL=arg_test
ENV ENV_DX_NUGET_URL=env_test
# COPY . /.
RUN echo "ARG_DX_NUGET_URL=${ARG_DX_NUGET_URL}"
RUN echo "ENV_DX_NUGET_URL=${ENV_DX_NUGET_URL}"
RUN echo "DX_NUGET_URL=${DX_NUGET_URL}"
# RUN dotnet restore "TestGitHubSecretsWithDocker.csproj" -s $ARG_DX_NUGET_URL -s https://api.nuget.org/v3/index.json
# RUN dotnet build
# ENTRYPOINT ["dotnet", "bin/Release/net5.0/Release/TestGitHubSecretsWithDocker.dll"]