

# Create folders
$folders = @(
    "frontend",
    "backend",
    "database",
    "optimization_engine"
)
foreach ($f in $folders) {
    if (-not (Test-Path $f)) { New-Item -ItemType Directory -Path $f }
}

# Create frontend files
$frontendIndex = "frontend\index.html"
$frontendCSS   = "frontend\style.css"
Set-Content -Path $frontendIndex -Value @"
<!DOCTYPE html>
<html>
<head>
    <title>Class Scheduling System</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Welcome to Class Scheduling System</h1>
</body>
</html>
"@

Set-Content -Path $frontendCSS -Value @"
body {
    font-family: Arial, sans-serif;
    text-align: center;
    margin-top: 50px;
}
"@

# Create backend files
$backendApp  = "backend\app.py"
$backendUtils = "backend\utils.py"

Set-Content -Path $backendApp -Value @"
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'Backend is running'

if __name__ == '__main__':
    app.run(debug=True)
"@

Set-Content -Path $backendUtils -Value @"
# Placeholder for backend helper functions
def helper():
    return 'Helper function'
"@

# Create optimization engine placeholder
$scheduler = "optimization_engine\scheduler.py"
Set-Content -Path $scheduler -Value @"
# Placeholder for timetable generation
def generate_timetable():
    return 'Timetable generation logic here'
"@

# Create database placeholder
$schema = "database\schema.sql"
Set-Content -Path $schema -Value @"
-- Placeholder for database schema
-- Tables: Faculty, Classroom, Courses, Batches, Timetable
"@

# Create main repo files
Set-Content -Path "README.md" -Value "# Class Scheduling System"
Set-Content -Path ".gitignore" -Value "venv/`n__pycache__/`n*.pyc"

Write-Host "✅ Project folders and starter files created successfully!"
