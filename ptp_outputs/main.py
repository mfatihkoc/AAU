
"""
import matplotlib.pyplot as plt

# Define the names of the three text files
file_names = ['test1_phc_1stPC.txt', 'test1_phc_2ndPC.txt']

# Initialize lists to store the offset values
offsets = [[] for _ in range(len(file_names))]

# Loop through the files and read the offset values
for i, file_name in enumerate(file_names):
    with open(file_name, 'r') as f:
        for line in f:
            if 'phc offset' in line:
                offset = float(line.split()[4])
                offsets[i].append(offset)

# Plot the offset values for each file on a single graph
fig, ax = plt.subplots()
for i, offset in enumerate(offsets):
    ax.plot(range(len(offset)), offset, label=f'File {i+1}')
ax.set_xlabel('Sample')
ax.set_ylabel('PHC Offset')
plt.savefig('test1_my1_plot.png')
ax.legend()
plt.show()
"""



import matplotlib.pyplot as plt
import numpy as np

# Read in the phc offset values from the first text file
with open('test1_phc_1stPC.txt', 'r') as f1:
    lines1 = f1.readlines()
    phc_offsets1 = [float(line.split()[4]) for line in lines1]

# Read in the phc offset values from the second text file
with open('test1_phc_2ndPC.txt', 'r') as f2:
    lines2 = f2.readlines()
    phc_offsets2 = [float(line.split()[4]) for line in lines2]

# Plot the histogram for both sets of values
plt.hist([phc_offsets1, phc_offsets2], bins=50, label=['Client 1', 'Client 2'])
plt.xlabel('PHC Offset (ns)')
plt.ylabel('Frequency')
plt.title('Distribution of PHC Offset Values')
plt.savefig('test1_my1_plot.png')
plt.legend()
plt.show()
