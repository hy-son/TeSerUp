import matplotlib.pyplot as plt
import argparse


parser = argparse.ArgumentParser()
parser.add_argument("--used_percent", help="Int percent of the used disk")
parser.add_argument("--used_boot_percent", help=r"Int percent of the used boot disk /boot")
args = parser.parse_args()

# Compute graph value
disk_used_percent = int(args.used_percent)
disk_free_percent = 100-disk_used_percent

boot_used_percent = int(args.used_boot_percent)
boot_free_percent = 100-boot_used_percent

# Set front 
plt.rcParams["font.family"] = "Arial"
#plt.figure(figsize=(100,100))

labels = "Free", "Used"
sizes = [disk_free_percent, disk_used_percent]
explode = (0, 0.1)  # only "explode" the 2nd slice (i.e. 'Hogs')
colors = ["#99ff99","#ff9999"]

fig, ax = plt.subplots(2,1,figsize=(16,9), gridspec_kw={'height_ratios': [5, 1]})
ax[0].set_title("Disk usage", family='Arial', fontsize=20, fontweight='bold')
ax[0].pie(sizes, explode=explode, labels=labels, autopct='%1.1f%%', shadow=False, startangle=90, colors= colors, labeldistance=0.1, textprops={'fontsize': 20} ) 
ax[0].axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.


ax[1].set_title("/boot usage", family='Arial', fontsize=20, fontweight='bold')
ax[1].barh(0.2,boot_used_percent, align='center', color= colors[1], label="Used" )
ax[1].barh(0.2,boot_free_percent, left= boot_used_percent+1, align='center',color= colors[0], label="Free" )
ax[1].axis("off")
ax[1].axis('equal') 

plt.tight_layout()
fig.savefig("/opt/TardisLink/img/disk_usage.png")
