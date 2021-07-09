# Computer Systems Organisation (CS2.201)
## Summer 2021, IIIT Hyderabad
## 09 July, Friday (Lecture 21) – Memory Hierarchies

Taught by Ziaul Choudhury

## DRAM (contd.)
### Main Memory Access
Data flows back and forth between the processor and the DRAM through buses. Each transfer of data is accomplished by a series of steps called a bus transaction – a read transaction is from the main memory to the CPU, and a write transaction is from the CPU to the main memory.  

The CPU treats the main memory as another I/O component, and therefore it is connected to it by the I/O bridge.  

The CPU, however, is unaware of the internal structure of the DRAM chip and only requests a single address from the I/O bridge. The I/O then does the low-level addressing (generating the RAS and CAS) to access the data and send it back to the CPU.

## Disk Storage
### Structure
A hard disk drive (HDD) is composed of a stack of platters (circular magnetic plates that store data) and read-write heads.

Platters usually made of aluminium, glass substrate or ceramic and held together and moved by a spindle. Each platter has two working surfaces. On each surface, there are a number of concentric circles called tracks, and each track is divided into several units (typically thousands) called sectors.  

The data size of a sector is usually 512 or 4096 bytes. Sectors are grouped into clusters.  

The collection of all tracks that are at the same distance from the edge of the platter (or from the spindle) is called a cylinder.  

The read-write head physically moves to the location on the platter where the data is stored to manipulate the memory at that location. This is what makes the hard disk so much slower than the DRAM.

### Disk Access
There are three important values:

* seek time (ST) – the time required to move the arm above the track containing the target sector.
* average rotational latency (ARL) – the average time to reach a sector on the track.
* transfer time (TR) – the average time taken for the disk to read (traverse) a sector.

The total disk latency, therefore, is TS + ARL + TR.
