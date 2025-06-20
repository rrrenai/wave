---
title: "~ wave ~"
author: "rrrenai"
description: "Directional headphones to assist in multi-speaker selection"
created_at: "2024-05-22"
---
# Total time spent: 10.5
(Likely will increase after I get the parts cuz FPGAs are kind of a nightmare)

# May 22nd: Starting!

Hello, today I started writing my project pitch. I created my BOM and look at some other projects for inspiration.

Here's what I have so far:
![5/22/2025 BOM](./journal_images/5.22_BOM.png)

I want to create something that can listen to omnidirectional audio and significantly clean up the output. I hope to help people with hearing problems.

**Time spent: 1 h**

---
# June 13th: Finished the headphone CAD

Today I used OnShape to design the electronic housing + headband.

The Tang Nano 9k is the largest item I anticipate using and thus I designed the ear cup around it. Here's a picture for the size of the Tang Nano 9k:
![Tang Nano 9K](./journal_images/tang_nano_size.png)

Here's what the headphones look like. I like the logo!
![top](./journal_images/cad_top.PNG)
![side](./journal_images/cad_right.PNG)
![southeast](./journal_images/cad_se.PNG)

Also, I started the schematic. I imported the Raspberry Pi Zero W onto the schematic and tried finding the footprint for the Tang Nano 9k but I wasn't able to :/ Guess I'll continue tmr? 

**Time spent: 4.5 h**

---
# June 14th: Continued working on Schem

There isn't any existing footprint for the Tang Nano 9k so I figured the Gowin chip it uses would be a sufficient representation of the board. Here's what the schem looks like so far::
![Schem on  6/14/25](./journal_images/6-14-25_schem.PNG)

I also did research on the most appropriate driver for my application. Here are some quick facts:
Dynamic (Most common)
- Electromagnet causes voice coil to vibrate for sound waves
- What does resistance have to do with the quality?

Planar magnetic
- Need amp

Balanced armature
- Small build for in-=ear monitors
- Pivot between two magnets to make sound

Electrostatic
- Static charge applied to thin film between two pieces of metal
- Free from secondary distortion
- Expensive compared to others

Piezoelectoric
- Voltage applied to crystal or ceramic

Bone-Conduction
- Vibrate bones
- Sound leakage

I think dynamic drivers are the best for me since I want to focus more on the software aspect rather than experiment with driver quality. Dynamic drivers are well established and have tons of documentation. However, I still need to figure out which model to buy...

**Time spent: 1.5 h**

---
# June 19th: FINISHED Schem

OH MY GOD THIS TOOK ALL DAY. 
![schem](./journal_images/6-19-25_schem.PNG)

I updated the BOM with the component names and found footprints for all essential items. This in itself took maybe 2 hours to finish especially because I was a little indecisive and sometimes the footprint was just pay-walled :/

Anyway, after I finished finding all the kicad.sch files, I looked up datasheets an added it to the "reference_files" folder. I used these datasheets in figuring out how to wire these items. 

My BOM requests 16 I2S mics but I only wired 4 on the schem to conserve space. All of them would be wired in the same way and do essentially the same operation. 

There's a bunch of software things I need to figure out once I get all the stuff so yea.

**Time spent: 3.5 h**