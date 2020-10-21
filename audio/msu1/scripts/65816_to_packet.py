#!/usr/bin/env python3

import argparse
import io
import os
parser = argparse.ArgumentParser(description="Convert a binary file to a series of Super Game Boy DATA_SND packets defined in RGBASM assembly format. The base address must be written at the end of the file as a 16-bit little endian number.")
parser.add_argument('in_file', type=argparse.FileType('rb'), help="input binary")
parser.add_argument('out_file', type=argparse.FileType('w'), help="output assembly")

args = parser.parse_args()

file_len = args.in_file.seek(-2, io.SEEK_END)
base_addr = int.from_bytes(args.in_file.read(), byteorder='little')

args.in_file.seek(0)
packet_data = args.in_file.read(file_len)

packet_data_split = [packet_data[i:i+11] for i in range(0, len(packet_data), 11)]

bank = 0
split_num = 0
label_name = "Packets_{}".format(os.path.split(os.path.splitext(args.in_file.name)[0])[-1])
args.out_file.write('{}::\n\t'.format(label_name))
args.out_file.write("db {} ; number of packets\n\n\t".format(len(packet_data_split)))
for split in packet_data_split:
	# base_addr
	len_ = len(split)
	args.out_file.write('DATA_SND ${}, ${}, ${}\n\t'.format(
		hex(base_addr)[2:],
		hex(bank)[2:],
		hex(len_)[2:]
	))
	args.out_file.write('db ')
	for i in range(len(split)):
		args.out_file.write('${}'.format(hex(split[i])[2:]))
		if i == len(split)-1:
			args.out_file.write('\n\t')
		else:
			args.out_file.write(',')
	if (len_ < 11):
		args.out_file.write('ds {}, 0\n'.format(11 - len_))
	else:
		args.out_file.write('\n\t'.format(11 - len_))
	
	
	split_num += 1
	base_addr += 11
