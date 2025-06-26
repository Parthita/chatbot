# Use official Go image
FROM golang:1.21

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Build the app (IMPORTANT: don’t specify just main.go!)
RUN go build -o out

# Expose the port your app runs on
EXPOSE 8080

# Run the app
CMD ["./out"]
