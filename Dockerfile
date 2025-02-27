# Use a base image with ASP.NET Framework support
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base

WORKDIR /inetpub/wwwroot

# Copy all files from your project to the container
COPY . .

# Expose port 80
EXPOSE 80

# Start IIS when the container runs
CMD ["cmd", "/c", "ping -t localhost"]
