import java.net.ServerSocket;
import java.net.Socket;
import java.io.IOException;

public class Firewall {
    private static final int PORT = 8080;

    public static void main(String[] args) throws IOException {
        ServerSocket serverSocket = new ServerSocket(PORT);

        while (true) {
            Socket clientSocket = serverSocket.accept();
            String clientAddress = clientSocket.getInetAddress().getHostAddress();
            if (isBlocked(clientAddress)) {
                clientSocket.close();
            } else {
                // Handle client request
            }
        }
    }

    private static boolean isBlocked(String clientAddress) {
        // Check if client address is in the blocked list
        return false;
    }
}
