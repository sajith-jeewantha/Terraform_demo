from flask import Flask, jsonify, render_template

app = Flask(__name__)


@app.route('/')
def index():
    # return 'This is the index page for Terraform Demo! Develop by SJ'
    return render_template('index.html')

# -----------------------------
# API Endpoints
# -----------------------------

@app.route('/api/status')
def api_status():
    return jsonify({
        "status": "running",
        "app": "Terraform Demo",
        "developer": "Sajith Jeewantha"
    })


@app.route('/api/info')
def api_info():
    return jsonify({
        "project": "Cloud-native Flask application built with Python, containerized using Docker, and deployed to Google Cloud using Terraform.",
        "version": "1.0.0",
        "github": "https://github.com/sajith-jeewantha",
        "language": "Python Flask",
        "infrastructure": {
            "cloud": "Google Cloud Platform (GCP)",
            "deployment": "Terraform IaC",
            "containerization": "Docker"
        }
    })



@app.route('/api/hello/<name>')
def api_hello(name):
    return jsonify({
        "message": f"Hello {name}, welcome to the Terraform Flask API!"
    })


if __name__ == '__main__':
    # This line is ignored when using 'flask run' in the container
    app.run(debug=True)
