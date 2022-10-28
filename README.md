 # How much force is applied in top-rope climbing: A data Analysis
 ### Thu Oct 20 17:06:26 PDT 2022
 
 >"In rock climbing, people get strong enough, and then they pick goals they can do with their strengths at that moment." Tommy Caldwell

 Climbing is a great sport which involves problem solving and great communication. However, participants might get injured if they are not careful in this activity. 
 Learning about the forces is key to understand the science behind climbing.

 On Oct 19, I as a data analyst, cooperating with my friends from the UBC Mechancial Engineering Department, carried out a force analysis project for top-rope climbing.

 In this project, following questions will be figured out:
 1. How much Force do I apply on the quick-draw when I fall on lead?
 2. How much Force do I apply on the Top Rope anchor when I take a big whipper?
 3. How is the force distributed between the anchor, rope and the belayer?
 4. How much does it hurt to belay me?

# The experiment
 
 Roan Raina, Mohammed Reza Karimi and I (Sumit) formed the team for experiment in UBC's Aviary (Top rope climbing gym). Below is the basic information

 | Person    | Body Weight (1) | Role           |
 |-----------|----------------|----------------|
 | Sumit     | 196 lbs        | climber        |
 | Roan      | 234.7 lbs      | belayer        |
 | Mohammed  | NA             | supervisor (2) |

> *1. When climbing its preferred to have a belayer >=50% of your weight, so that the belayer is able to effectively belay you without being elevated
> 2. In charge of controlling the sensors and setting up the equipment for the experiment.********

 At my request, Roan fed me slack for the whole climb, to recreate a lead climbing experience.
 
 >* Dyno is when the climber makes a dynamic movement that uses momentum to get to the next hold.*
 
 During the process, I attempted the Dyno twice, which caused two peak forces and these will be discussed in the next section.
 
<img width="1020" alt="image" src="https://user-images.githubusercontent.com/47517636/197107891-81dc59ac-9f57-4463-9d5f-244611129dcf.png">


# Units
 I use lbs and lbf and interchangeably as they are quite similar and for my purposes an approximate answer is quite adequate.
 The conversion rate used is, **1 lbf = 4.44822 N**


o# The Analysis

 1. Time Series Analysis:
	As the figure above suggests, there are small oscillatory motions that are unexplained, this is due to the semi-static rope and the small forces acting on it due to the climb.

	- General Observations:

	<img width="1020" alt="image" src="https://user-images.githubusercontent.com/47517636/197106869-bbf2e78c-7229-48ec-9895-b0f1a7e416d0.png">

	As can be seen from the image above, after 32s until 33.4, i ask for Roan for slack, hence most of my weight is on the wall and none is on the rope.

	i leaped for about 10s, which brought the force on the anchor to low 100s.

	after 34.5s, I started free falling for 0.5s this means after Roan caught me the slack extended for about 0.5s, the force rose from 
	
	[105.43810 N ->  522.32739 N -> 1127.98857 N -> 1205.29755 N ]

	It rises by about 5 times in the first 0.1s and then falls to 2 times to coming to stand still at 3273 N.
	
	this is when the dynamicity of the rope comes into play, so for the next 0.5s the rope absorbs the force.

	After this i get back on the wall, so the forces oscillate around 1000 until i get lowered as i am keeping my weight mostly on the harness, with no hands on the wall.
	
	<img width="1020" alt="image" src="https://user-images.githubusercontent.com/47517636/197107543-18ed4e45-0c45-4e22-9747-8c4eadc4a186.png">

	- First Differences/ Impulse:
	
	*Impulse in Physics is a term that is used to describe the effect of force acting over time to change the momentum of an object.*

	The First Differences shows the peak and the dip right after the fall, so as per the data it suggests the impluse was 2075.317 N over half a second.



# Results

## How much force do i apply on the anchor on top rope whip?
I applied about 3273 N, on this specific climb. This was done with slack however it doesn't accurately replicate the lead climb whip as those whips are sometimes done above the anchor leading to bigger fall maximum of twice the distance if you fall while clipping.

This makes me wonder, how much the trad nuts and cams withstand when a climber whips. There is emphasis on placing the gear right as if placed right the force is transferred on the rock if not the piece just pops out.

<img width="1020" alt="image" src ="8KN.png">

the infograph above displays visually how much force i exert on the climbing equipment as i whip.

 - Biner Scale: Black Diamond Locking Biner
 - Cam Scale: DragonFly Micro Cams
 - Kong Scale: [the weakest gorilla punch is 5.8 KN.](https://www.google.com/search?client=safari&rls=en&q=gorilla+punch+force&ie=UTF-8&oe=UTF-8)

## How much does it hurt to Belay me?

I weigh 196 lbs, me standing exerts a force of 871.85 N on the ground ( found thanks to Newtons Second Law).

Roan felt approximately 37N as I climbed, when I whipped he elevated, that's because he weighs 1054.83 Ns and I generated 3x amount of force. He placed his legs on the wall and braced himself, the weight was then transferred on the anchor and the rope mostly.

As I stayed still on the wall after the fall, I exerted 2080 Ns hence he remained elevated until I lowered enough till about the my forces were equal or less than his, which is until I safely reached the ground.


# Conclusion
The pain to belay me is very strongly correlated with how ill-fitting your harness is and how light you are compared to me.
Every action has an equal and opposite reaction, so if I whip, you fly. 






