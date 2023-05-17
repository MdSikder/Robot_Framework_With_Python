import TCPStream
import socket
import select

class TCPStreamListener(object):
    def __init__(self, hostname, port):
        self.listening_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.listening_sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        self.listening_sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEPORT, 1)
        self.listening_sock.bind((hostname, int(port)))
        self.listening_sock.listen()
        self.stream = None

    def wait_for_connection(self, timeout):
        read_list, write_list, err_list = select.select([self.listening_sock], [], [], float(timeout))
        if len(read_list) > 0:
            self.stream = TCPStream.TCPStream()
            client_sock, client_addr = self.listening_sock.accept()
            self.stream.set_socket(client_sock)
            return True
        else:
            return False
        return True

    def receive_from_client(self, timeout):
        return self.stream.recv(timeout)
