from flask import Flask
from prometheus_client import make_wsgi_app, Counter, Gauge
from prometheus_client.exposition import basic_auth_handler
import time
import logging

# Initialize Flask app
app = Flask(__name__)

# Prometheus metrics
REQUEST_COUNT = Counter('http_requests_total', 'Total HTTP requests', ['method', 'endpoint'])
SLOW_OPERATION_TIME = Gauge('slow_operation_duration_seconds', 'Time taken for the slow operation')




# Route for the home page
@app.route('/')
def hello_world():
    REQUEST_COUNT.labels(method='GET', endpoint='/').inc()
    return 'Hello, World!'

# Route that simulates a slow operation
@app.route('/slow')
def slow():
    start_time = time.time()

    # Simulate a slow operation
    time.sleep(5)

    # Record time taken for the slow operation
    elapsed_time = time.time() - start_time
    SLOW_OPERATION_TIME.set(elapsed_time)

    REQUEST_COUNT.labels(method='GET', endpoint='/slow').inc()

    return f"Slow operation took {elapsed_time:.2f} seconds to complete."

# Expose Prometheus metrics at '/metrics' endpoint
from prometheus_client import generate_latest
@app.route('/metrics')
def metrics():
    return generate_latest()

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
