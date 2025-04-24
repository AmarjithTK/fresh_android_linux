By default, Syncthing will not autostart unless you explicitly enable it. On Arch Linux (or any systemd-based distro), you need to enable the systemd service so it runs automatically at boot.

Here’s what you should do:

✅ Step-by-step (for your user account):
Enable Syncthing for your user (so it starts only when you log in):

bash
Copy
Edit
systemctl --user enable syncthing.service
Start it right now (if you want to test immediately):

bash
Copy
Edit
systemctl --user start syncthing.service
🔒 Optional but important:
Make sure to allow Syncthing through your firewall if you have one (like ufw, firewalld, etc.), especially for local device discovery and web UI access.

🧠 Pro tip (if you want system-wide setup instead):
If you want Syncthing to run for all users or even without login, you can use:

bash
Copy
Edit
sudo systemctl enable syncthing@yourusername.service
