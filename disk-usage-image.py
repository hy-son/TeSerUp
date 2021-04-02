import matplotlib.pyplot as plt
import argparse


parser = argparse.ArgumentParser()
parser.add_argument("--used_percent", help="Int percent of the used disk")
args = parser.parse_args()

# Compute graph value
disk_used_percent = int(args.used_percent)
disk_free_percent = 100-disk_used_percent

# Set front 
plt.rcParams["font.family"] = "Arial"


labels = "Free", "Used"
sizes = [disk_free_percent, disk_used_percent]
explode = (0, 0.1)  # only "explode" the 2nd slice (i.e. 'Hogs')
colors = ["#99ff99","#ff9999"]

fig, ax1 = plt.subplots(figsize=(5,5))
ax1.set_title("Disk usage", family='Arial', fontsize=20, fontweight='bold')
ax1.pie(sizes, explode=explode, labels=labels, autopct='%1.1f%%', shadow=False, startangle=90, colors= colors, labeldistance=0.1, textprops={'fontsize': 20} ) 
ax1.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.
plt.tight_layout()
fig.savefig("/opt/TardisLink/img/disk_usage.png")
