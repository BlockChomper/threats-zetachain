# Given SVG files
svg_files = [
    'high_level_threat_modelling/steal_fund/steal_fund.svg',
    'high_level_threat_modelling/denial_of_service/dos.svg',
    'high_level_threat_modelling/freeze_fund/freeze_fund.svg',
    'high_level_threat_modelling/consensus_manipulation/consensus_manipulation.svg'
]

# Generate HTML content
html_content = "<html>\n<head>\n<title>SVG Files List</title>\n</head>\n<body>\n<ul>\n"

# Add list items with links to the SVG files
for svg_file in svg_files:
    html_content += f'<li><a href="{svg_file}" target="_blank">{svg_file}</a></li>\n'

# Close the list and HTML tags
html_content += "</ul>\n</body>\n</html>"

# Save the HTML content to a file
html_file_path = 'index.html'
with open(html_file_path, 'w') as html_file:
    html_file.write(html_content)
