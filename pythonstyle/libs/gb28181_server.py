# -*- coding: utf-8 -*-
'''
    描述：实现gb28181服务端功能
    作者: chinacsj@139.com
    日期: 2024-10-16
'''
import socket
import threading
import logging

# 设置日志记录
logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)

class GB28181Server:
    def __init__(self, host='0.0.0.0', port=5060):
        self.host = host
        self.port = port
        self.lock = threading.Lock()
        self.registered_devices = {}
        self.sockets = {
            'udp': self.create_udp_socket()
        }

    def create_udp_socket(self):
        """创建 UDP 套接字"""
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        sock.bind((self.host, self.port))
        logger.info(f"Server started at {self.host}:{self.port}")
        return sock

    def run(self):
        """运行服务器，监听请求"""
        while True:
            data, addr = self.sockets['udp'].recvfrom(1024)  # 接收数据
            threading.Thread(target=self.handle_request, args=(data.decode(), addr)).start()

    def handle_request(self, request, addr):
        """处理接收到的请求"""
        logger.debug(f"Received request from {addr}: {request}")
        lines = request.splitlines()
        if lines and 'REGISTER' in lines[0]:
            self._handle_register(lines, addr)

    def _handle_register(self, lines, addr):
        """处理 REGISTER 请求"""
        try:
            device_id = self.extract_device_id(lines)
            if device_id:
                with self.lock:  # 确保线程安全
                    self.registered_devices[device_id] = addr
                self.send_response(addr, 200)  # 返回 200 OK
                logger.info(f"Device {device_id} registered successfully.")
            else:
                self.send_response(addr, 400)  # 返回 400 Bad Request
                logger.warning("Failed to extract device ID from REGISTER request.")
        except Exception as e:
            logger.error(f"Error handling REGISTER request: {e}")
            self.send_response(addr, 500)  # 返回 500 Internal Server Error

    def extract_device_id(self, lines):
        """从请求中提取设备 ID，假设它在第一行中"""
        # 这里可以根据实际的请求格式进行调整
        if len(lines) > 0:
            parts = lines[0].split()
            if len(parts) > 1:
                return parts[1]  # 假设设备 ID 是第二个部分
        return None

    def send_response(self, addr, status_code):
        """发送 SIP 响应"""
        response = f"SIP/2.0 {status_code} OK\r\n\r\n".encode()
        self.sockets['udp'].sendto(response, addr)
        logger.debug(f"Sent response {status_code} to {addr}")

if __name__ == "__main__":
    server = GB28181Server()
    server.run()




