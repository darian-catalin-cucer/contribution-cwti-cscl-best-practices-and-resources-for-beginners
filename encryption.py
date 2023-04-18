from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad

def encrypt(data, key):
    """
    Encrypt data using AES algorithm with specified key
    """
    cipher = AES.new(key, AES.MODE_CBC)
    encrypted_data = cipher.encrypt(pad(data.encode(), AES.block_size))
    return encrypted_data

def decrypt(encrypted_data, key):
    """
    Decrypt encrypted data using AES algorithm with specified key
    """
    cipher = AES.new(key, AES.MODE_CBC)
    decrypted_data = unpad(cipher.decrypt(encrypted_data), AES.block_size)
    return decrypted_data.decode()

# Example usage
data = "This is a secret message"
key = b'This is a secret key'
encrypted_data = encrypt(data, key)
print(encrypted_data)
decrypted_data = decrypt(encrypted_data, key)
print(decrypted_data)
