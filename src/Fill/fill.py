import sys
version = "v0.1.2"

helptxt = [
  version,
  "=======================USAGE========================",
  "To use this command: fill [filename] [amount] [unit]",
  "unit - the smallest unit [byte, kb, mb, gb, gb100]",
  "=======================DEMO=========================",
  "EXAMPLE: fill test.bin 10 kb",
  "This will fill 'test.bin' with 10 kilobytes",
  "=======================NOTES========================",
  "WARNING: Files larger than 100mb could take considerable time",
  "NOTE: These files are filled with binary data and are not text viewable",
]

if(sys.argv[1] == "/?"):
  helptxt[for line in txt print(line)]
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
