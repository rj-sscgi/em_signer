# Use a base image with ASP.NET Core support
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base

# Set the working directory inside the container
WORKDIR /app

# Copy all files from your project to the container
COPY . .

# Expose the port your app will run on
EXPOSE 80

# Run the application using Kestrel
CMD ["dotnet", "YourApp.dll"]
