import sys

if(sys.argv[1] == "/?"):
  print("v0.1.2")
  print("=======================USAGE========================")
  print("To use this command: fill [filename] [amount] [unit]")
  print("unit - the smallest unit [byte, kb, mb, gb, gb100]")
  print("=======================DEMO=========================")
  print("EXAMPLE: fill test.bin 10 kb")
  print("This will fill 'test.bin' with 10 kilobytes")
  print("=======================NOTES========================")
  print("WARNING: Files larger than 100mb could take considerable time")
  print("NOTE: These files are filled with binary data and are not text viewable")
  quit()

byte = 1
kb = byte * 1024
mb = kb * 1024
gb = mb * 1024
gb100 = gb * 100
# Open a file in binary (b) mode for writing.
fp = open(sys.argv[1], "wb")
# Write whatever data you like to it.
fp.write(b'\0'*(int(sys.argv[2]) * eval(sys.argv[3])))
fp.close()