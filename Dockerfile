FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
WORKDIR /src
COPY ["ComicBookGallery.csproj", "./"]
RUN dotnet restore "./ComicBookGallery.csproj"
COPY . .
RUN dotnet build "ComicBookGallery.csproj" -c Release -o /app
