import os

folder = "C:\\Users\\neal1\\OneDrive\\KH2 Modding\\nmc\\kh2\\obj"

for filename in os.listdir(folder):
    if filename.endswith(".a.fm"):
        new_filename = filename[:-5] + ".a.us"
        old_path = os.path.join(folder, filename)
        new_path = os.path.join(folder, new_filename)
        os.rename(old_path, new_path)
        print(f"Renamed: {filename} → {new_filename}")
    else:
        print(f"Skipped: {filename}")
