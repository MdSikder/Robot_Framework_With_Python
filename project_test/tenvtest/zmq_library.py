import zmq


class ZmqLibrary:
    def __init__(self):
        self.context = zmq.Context()

    def connect(self, endpoint):
        self.socket = self.context.socket(zmq.REQ)
        self.socket.connect(endpoint)

    def send_message(self, message):
        self.socket.send(message.encode())
        response = self.socket.recv().decode()
        return response

    def close(self):
        self.socket.close()
        self.context.term()
