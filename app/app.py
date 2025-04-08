from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return '''
    <html>
        <head>
            <title>Mini Project 3 – Flask on AWS via Terraform</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-color: #f4f4f4;
                    margin: 0;
                    padding: 0;
                }
                .container {
                    max-width: 800px;
                    margin: 60px auto;
                    padding: 30px;
                    background-color: #ffffff;
                    border-radius: 10px;
                    box-shadow: 0 0 10px rgba(0,0,0,0.1);
                }
                h1 {
                    color: #2c3e50;
                }
                p {
                    color: #555;
                    line-height: 1.6;
                }
                footer {
                    margin-top: 30px;
                    font-size: 0.9em;
                    color: #888;
                }
            </style>
        </head>
        <body>
            <div class="container">
                <h1>🚀 Mini Project 3 – DevOps IaC on AWS</h1>
                <p>This is a simple Flask web application that has been containerized using Docker and deployed on an AWS EC2 instance provisioned through Terraform.</p>
                <p>🔧 Tools & Tech Used:</p>
                <ul>
                    <li>Flask (Python web framework)</li>
                    <li>Docker (for containerization)</li>
                    <li>Terraform (for AWS infrastructure)</li>
                    <li>AWS EC2 (hosting environment)</li>
                </ul>
                <p>This project is part of my DevOps internship at <strong>Medtronic Engineering and Innovation Centre</strong>.</p>
                <footer>Developed by Udayan Gupta</footer>
            </div>
        </body>
    </html>
    '''

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
