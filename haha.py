# Given SVG files organized by category
high_level_threat_modelling_files = [
    'high_level_threat_modelling/steal_fund/steal_fund.svg',
    'high_level_threat_modelling/denial_of_service/dos.svg',
    'high_level_threat_modelling/freeze_fund/freeze_fund.svg',
    'high_level_threat_modelling/consensus_manipulation/consensus_manipulation.svg'
]

module_level_attack_tree_files = [
    'modules_level_threat_modelling/disrupt_cross_chain_module/cross_chain_module.svg',
    'modules_level_threat_modelling/disrupt_emission_module/emission_module.svg',
    'modules_level_threat_modelling/disrupt_fungible_module/fungible_module.svg',
    'modules_level_threat_modelling/disrupt_oberserver_module/oberserver_module.svg'
]

# Start of the HTML content
html_content = """<html>
<head>
<title>Threat Modelling SVG Files</title>
</head>
<body>
<h2>High Level Threat Modelling</h2>
<ul>
"""

# Add list items for High Level Threat Modelling
for svg_file in high_level_threat_modelling_files:
    file_name = svg_file.split('/')[-1]
    html_content += f'<li><a href="{svg_file}" target="_blank">{file_name}</a></li>\n'

# Add heading for Module Level Attack Tree
html_content += """
</ul>
<h2>Module Level Attack Tree</h2>
<ul>
"""

# Add list items for Module Level Attack Tree
for svg_file in module_level_attack_tree_files:
    file_name = svg_file.split('/')[-1]
    html_content += f'<li><a href="{svg_file}" target="_blank">{file_name}</a></li>\n'

# Close the list and HTML tags
html_content += "</ul>\n</body>\n</html>"

# Save the HTML content to a file
html_file_path = 'index.html'
with open(html_file_path, 'w') as html_file:
    html_file.write(html_content)
