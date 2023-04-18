import clamd

def scan_file(filename):
    """
    Scan a file for viruses using the ClamAV antivirus engine
    """
    cd = clamd.ClamdUnixSocket()
    result = cd.scan_file(filename)
    return result

# Example usage
result = scan_file("test_file.exe")
print(result)
