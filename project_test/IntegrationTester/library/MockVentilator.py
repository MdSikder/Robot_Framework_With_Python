import TCPStream


class MockVentilator(object):
    def __init__(self):
        self.tcp_stream = TCPStream.TCPStream()

    def ventilator_connects(self, hostname, port, src_ipaddr="", src_port=0):
        self.tcp_stream.connect(hostname, port, src_ipaddr, src_port)

    def ventilator_sends(self, msg):
        return self.tcp_stream.send(msg)

    def ventilator_receives(self, timeout):
        return self.tcp_stream.recv(timeout)
