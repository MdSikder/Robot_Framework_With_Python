import zmq


class MockCloudSender(object):
    def cloud_sender_connects(self, hostname, port):
        self.context = zmq.Context()
        self.sock = self.context.socket(zmq.SUB)
        self.sock.setsockopt_string(zmq.SUBSCRIBE, "")  # we do not filter by topic
        self.sock.connect("tcp://"+hostname+":"+port)

    def cloud_sender_receives(self, timeout):
        if (self.sock.poll(timeout=int(timeout)) > 0):
            msg = self.sock.recv()
            return msg.decode("ascii")
        else:
            return None
