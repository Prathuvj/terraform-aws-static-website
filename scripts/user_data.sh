#!/bin/bash

# Update the system
yum update -y

# Install Apache
yum install -y httpd

# Start Apache and enable it on boot
systemctl start httpd
systemctl enable httpd

# Create a simple index.html
cat > /var/www/html/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to My Static Website</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
        }
        h1 {
            color: #333;
        }
        p {
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to My Static Website</h1>
        <p>This website is hosted on AWS EC2 and deployed using Terraform!</p>
    </div>
</body>
</html>
EOF

# Set proper permissions
chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html