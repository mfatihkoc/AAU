import matplotlib.pyplot as plt

# Define the names of the three text files
file_names = ['phc_1.txt', 'phc_2.txt']

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
ax.legend()
plt.show()
