import os

def configure_firewall():
    """
    Configure the firewall to allow incoming traffic on port 80 (HTTP)
    """
    os.system("sudo ufw allow 80/tcp")
    os.system("sudo ufw deny in from any to any")

# Example usage
configure_firewall()
