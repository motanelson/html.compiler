import zlib
import os
def save_compile(filename, text):
    
    compiles = zlib.compress(text.encode("utf-8"))
    with open(filename, "wb") as f:
        f.write(compiles)

def load_compile(filename):
    
    with open(filename, "rb") as f:
        compiles = f.read()
    return zlib.decompress(compiles).decode("utf-8")

print("\033c\033[47;31m\ngive me a file .shcx to compile ? ")
a=input().strip()
b=a.find(".")
c=a
if b>-1:
    c=a[:b]+".sh"
bbb=load_compile(a)
f1=open("/tmp/"+c,"w")
f1.write(bbb)
f1.close()
os.system("bash /tmp/"+c)
