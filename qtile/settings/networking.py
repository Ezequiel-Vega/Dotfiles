import netifaces

def network():
    interfaces = netifaces.interfaces()

    for interface in interfaces:
        data = netifaces.ifaddresses(interface)

        variable = data.keys()

        if netifaces.AF_INET in variable:
            if data[netifaces.AF_INET][0]['addr'] and interface != "lo":
                if interface == 'wlan0':
                    return {
                            'interface': interface,
                            'icon': ''
                            }
                else:
                    return {
                            'interface': interface,
                            'icon': ''
                            }

if __name__ == "settings.networking":
    network = network()
