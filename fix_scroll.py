import os

files = [
    r"C:\FF Inventario Vehiculos Suzuval\lib\login\forgot_password_page\forgot_password_page_widget.dart",
    r"C:\FF Inventario Vehiculos Suzuval\lib\login\loading_page\loading_page_widget.dart",
    r"C:\FF Inventario Vehiculos Suzuval\lib\monitor_inventario\home_monitor\home_monitor_widget.dart",
    r"C:\FF Inventario Vehiculos Suzuval\lib\pages\home_nuevo_o_usados\home_nuevo_o_usados_widget.dart",
    r"C:\FF Inventario Vehiculos Suzuval\lib\vehiculos_nuevos\menu_inventario_nuevos\menu_inventario_nuevos_widget.dart",
    r"C:\FF Inventario Vehiculos Suzuval\lib\vehiculos_usados\menu_inventario_usados\menu_inventario_usados_widget.dart"
]

for file in files:
    with open(file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    if 'SingleChildScrollView' in content:
        continue
        
    idx = content.find('body: SafeArea(')
    if idx == -1:
        continue
    
    start_parens = content.find('(', idx)
    end_parens = -1
    open_parens = 0
    for i in range(start_parens, len(content)):
        if content[i] == '(':
            open_parens += 1
        elif content[i] == ')':
            open_parens -= 1
            if open_parens == 0:
                end_parens = i
                break
                
    if end_parens != -1:
        first_child = content.find('child: ', start_parens)
        
        part1 = content[:first_child]
        part2 = "child: SingleChildScrollView(\n" + " " * 12 + "child: " + content[first_child + 7:end_parens]
        
        last_newline = content.rfind('\n', 0, end_parens)
        indent = ""
        if last_newline != -1:
            indent = content[last_newline+1:end_parens]
            
        part3 = "\n" + indent + ")," + content[end_parens:]
        
        new_content = part1 + part2 + part3
        
        with open(file, 'w', encoding='utf-8') as f:
            f.write(new_content)
        print(f"Fixed {os.path.basename(file)}")
