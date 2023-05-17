import socket
import select

class TCPStream(object):
    def connect(self, hostname, port, src_ipaddr="", src_port=0):
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.sock.bind((src_ipaddr, src_port))
        self.sock.connect((hostname, int(port)))
        return self 

    def set_socket(self, socket):
        self.sock = socket

    def send(self, msg):
        return self.sock.send(msg)

    def recv(self, timeout):
        read_list, write_list, err_list = select.select([self.sock], [], [], float(timeout))
        if len(read_list) > 0:
            return self.sock.recv(4096)
        return None
