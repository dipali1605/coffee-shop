# -----------------------
#  Build Stage
# -----------------------
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copy everything
COPY . .

# Restore + Build + Publish
RUN dotnet restore
RUN dotnet publish -c Release -o /app/publish


# -----------------------
#  Runtime Stage
# -----------------------
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app

# Copy published output
COPY --from=build /app/publish .

# ASP.NET Core runs on port 8080 for Vercel
ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080

# Replace with your DLL name (Checked your repo)
ENTRYPOINT ["dotnet", "CoffeeShop.dll"]
