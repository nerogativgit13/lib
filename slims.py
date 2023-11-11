from src.SlimService import slims
import sys,os

def param_check():
	try:
		a = sys.argv[1]
	except IndexError:
		print("Gunakan python2 slim.py file.txt")
		os.sys.exit()

def file_check():
	try:
		open(sys.argv[1])
	except IOError:
		print("Pastikan file yang mau di upload benar vuln")
		os.sys.exit()

def about():
	os.system("clear")
	print('  \033[1;31m  ============ ')
	print('  SLIMASSDEFACE')
	print('  NEROGATIV13')
	print('  ============  \033[1;37mcoded by Xnero13-Id..\n')


if __name__ == "__main__":
	try:
		about()
		param_check()
		file_check()
		while True:
			target = raw_input("\033[1;37m[ \033[1;31mGRT \033[1;37m]> ")
			a = slims(target, sys.argv[1])
	except:
		pass