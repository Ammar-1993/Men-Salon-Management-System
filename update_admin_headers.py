import glob
import os

target_dir = r"d:\projects\Men-Salon-Management-System\admin"
css_insert = '<link href="../css/variables.css" rel=\'stylesheet\' type=\'text/css\' />\n'
js_insert = '<script src="../js/theme.js"></script>\n'

files = glob.glob(os.path.join(target_dir, "*.php"))

for file_path in files:
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        continue
    
    # Check if already updated
    if 'variables.css' in content and 'theme.js' in content:
        print(f"Skipping {os.path.basename(file_path)} (already updated)")
        continue
        
    new_content = content
    modified = False
    
    # Insert CSS
    if 'variables.css' not in content:
        target_css = '<link href="css/style.css" rel=\'stylesheet\' type=\'text/css\' />'
        if target_css in content:
            new_content = new_content.replace(target_css, css_insert + target_css)
            modified = True
        else:
             # Try double quotes variant if single quotes fail
            target_css_dq = '<link href="css/style.css" rel="stylesheet" type="text/css" />'
            if target_css_dq in content:
                new_content = new_content.replace(target_css_dq, css_insert + target_css_dq)
                modified = True
    
    # Insert JS
    if 'theme.js' not in content:
        target_js = '<script src="js/custom.js"></script>'
        if target_js in content:
             new_content = new_content.replace(target_js, target_js + '\n' + js_insert)
             modified = True
            
    if modified:
        try:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(new_content)
            print(f"Updated {os.path.basename(file_path)}")
        except Exception as e:
            print(f"Error writing {file_path}: {e}")
    else:
        print(f"No changes needed for {os.path.basename(file_path)}")
