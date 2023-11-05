import os

def find_svg_files(root_folder):
    svg_files = []
    for root, dirs, files in os.walk(root_folder):
        for file in files:
            if file.endswith(".svg"):
                # Construct relative path from the root folder to the SVG file
                relative_path = os.path.relpath(os.path.join(root, file), root_folder)
                svg_files.append(relative_path)
    return svg_files

# Use a placeholder for the root folder path
root_folder_path = "."
svg_files = find_svg_files(root_folder_path)
print(svg_files)