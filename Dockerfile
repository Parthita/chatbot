# Use official Golang image
FROM golang:1.21

# Set working directory
WORKDIR /app

# Copy all Go files
COPY . .

# Build the Go app
RUN go build -o out main.go

# Expose port (matches your main.go default)
EXPOSE 8080

# Run the app
CMD ["./out"]
