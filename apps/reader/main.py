import http.server
import socketserver
import json
import redis

class RequestHandler(http.server.SimpleHTTPRequestHandler):

    def _send_cors_headers(self):
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', '*')
        self.send_header('Access-Control-Allow-Headers', '*')

    def do_OPTIONS(self):
        try:
            self.send_response(200, "OK")
            self._send_cors_headers()
            self.end_headers()
        except Exception as ex:
            self.send_response(500, "Internal Server Error")
            self.end_headers()
            print(ex)

    def do_GET(self):
        try:
            self.send_response(200)
            self.send_header("Content-type", "application/json")
            self._send_cors_headers()
            self.end_headers()

            if self.path == '/health':
                self.wfile.write(bytes("up", "utf8"))
            if self.path == '/reader':
                redishost = "redis-service"
                with redis.Redis(host=redishost, port=6379, db=0) as redisclient:
                    self.wfile.write(redisclient.get("SHAREDKEY"))
        except Exception as ex:
            self.send_response(500, "Internal Server Error")
            self.end_headers()
            print(ex)

if __name__ == "__main__":
    handler_object = RequestHandler
    with socketserver.TCPServer(("", 8080), handler_object) as server:
        server.serve_forever()
