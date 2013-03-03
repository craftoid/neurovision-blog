---
layout: post
author: Martin Schneider
---

{% include JB/setup %}

I recently had the pleasure to collaborate with media artist [Ursula Damm]({{ BASE_PATH }}/authors/Ursula_Damm.html) on a project called [Transits][1] that uses neural networks implemented as OpenGL fragment shaders for generative video processing.  
The artwork is currently shown in the [Sensing Place Exhibition][2] in Basel.

Kyle VanHemert from [Fast.Co Design](http://www.fastcodesign.com/) contacted us with a couple of questions, which resulted in an article titled [“With Computer Code, A Swiss Intersection Becomes A Hallucinatory Work Of Art”][3]

I took the freedom to assemble Kyle's questions and our answers into the interview below:

----

*I was curious how you and Martin Schneider became collaborators and how the software was designed.*

----


**DAMM:**	I have been interested in neural networks for the last 10 years. Together with computer scientists I have developed several artworks using Kohonen Maps. [^1] [^2]  
In the video installation [“598”][6] we analyzed video footage showing flocks of sheep with the goal to establish a self organizing image, which would process and arrange visual information very much like it is done in Kohonen's [Self-Organizing Maps][7] (SOMs).
However rendering times were still prohibitivly high at the time.


**SCHNEIDER:** I had my first contact with Neural Networks back in 2001, when I was doing an internship at the MARS Exploratory Media Lab.  
Back then I used those SOMs to visually cluster Documents... Lasse Scherffig, who studied Cognitive Science with me at the time, established the Contact with Ursula Damm.


**DAMM:**	I was looking for a Software Developer to take my approach to the next level, since Matthias Weber - my longtime collaborator was not available at the time.


**SCHNEIDER:** I'm quite fascinated with Ursula's idea of applying Neural Networks to animated imagery.
Especially since I have been experimenting with flowfield driven drawings in my previous work. [^3] [^4]  
I was eager to explore how optical flow of the animated image could be used to create a feedback loop inside the neural network, and what would come out of it.


----

*Did you have an idea in your head of what you wanted the finished video to look like? Or did you let the code take you to some unexpected places, visually?*

----

**DAMM:** Well both, actually:
I had a very clear idea about the video. Since it's not the first time I worked with these algorithms, I also had an detailed plan for the shooting (perspectives, importance of colour etc.)  
But at the same time Martin provided me with a framework that allowed for  exploring visual variations, giving me control over the neural parameters.


**SCHNEIDER:** Since we both live in different cities, I tried to speed up the development cylce by creating *Neurovision* - a web framework based on ThreeJS and WebGL shaders.  
This framework is very similar to the WebGL sandbox, but it lets you stack several layers of shaders on top of each other, where each layer basically simulates a neural network layer.  
The parameters of the layers are automagically turned into sliders, which Ursula used to finetune the result.


**DAMM:**	Martin used his framework to create various sketches, iteratively approaching the kind of transformation I had in mind.  
Once the architecture of the neural network was set in stone, Martin created a custom OpenFrameworks App for rendering the Video in HD-Quality.


**SCHNEIDER:** At the same time I tried to keep everything as simple as possible on the level of the neural code, because we wanted the complexity to come from the neuralinteractions, not from the inherent complexity of the neurons.


----

*Why did you chose to represent motion in this way? How do you see this fitting in to the Sensing Place exhibition?*

----

**DAMM:**	My interest is to focus on the body and on bodily experience. The central theme in *Transits* is the body and the city: Different layers of means of transportation - overlapping and interfering with each other.  
In the 90s I used video tracking a lot in my artworks [^5]

But for the moment I consider this approach less interesting, because it doesn't tell you anything about intents and it is quickly becoming too abstract.  
Many works in the exhibition are dealing with remote technologies, therefore my intention was to focus on the pedestrian.


----

*So how do you think of the final product?*

----

**DAMM:** After finishing the video "598" I knew that I wanted to make a video with self organization in the neural network.
The subject of the video, the Aeschenplatz in Basel, was carefully chosen:

It's a very unique place with very uncommon traffic routing, which has grown over time rather than being designed.

**SCHNEIDER:** The original Neural Network Model developed by Tievo Kohonen is very much sequential.
Visual information processing however is massively parallel. The visual fludity of *Transits* is the result of this kind of parallel image processing. 

It wouldn't have been possible without GPU's, WebGL and OpenSource software. These tools provide acceess to a whole new world of generative image processing, we couldn't even imagine a couple of years ago.

----

*On Vimeo Transits is labeled as a "generative" video.  
Is this essentially the original video of Basel with an added effect?  
Or a different product entirely?*

----

**SCHNEIDER:** Standard Video Effects are straightforward transformations.
What you see on the screen in *Transits* is not a transformed image, but actually the state of the output layer of a recurrent neural network.

The network is structurally coupled to its visual input. It is a homeostatic system, constantly feeding back onto itself, trying to create its own representation of the world outside. So *Transits* is really generative in the original sense of the word.

----

*What's the relationship the final product has with the source material, in your mind?*

----


**DAMM:** I had a very clear idea of how I wanted the colours to self-organize and how to represent them in the neural network. I already considered this when filming the original video.
So the source material was supposed to have vivid colours rather than just natural ones.  
I also wanted the network to show motion traces, revealing both complex and constrained motion patterns. So it was clear from the outset that the motif should be a crossroads area.


**SCHNEIDER:**  On the level of neurons everything really boils down to calculating color differences.  
Color Differences in space allow for color attraction. Color Differences in time provide for optical flow and convection. For me the beauty of the piece also ows to the simplicity of the underlying rules.


**DAMM:** In *Transits* color interaction is very much restricted to local areas. We are planning to add several layers to the neural network, so that self organisation can happen at different scales. Turing-McCabe Patterns are an excellent example of this kind of multilevel self organisation.  
I would also love to transform the audio in a similar way, and apply neural networks to video footage of different crossroads from various cities.


[^1]: [Memory of Space][4]
[^2]: [Zeitraum][5]
[^3]: [Codex Processianus][8]
[^4]: [Flowfield Driven Drawing][9]
[^5]: [Trace Pattern II][10]

[1]: http://ursula-damm.de/transits-2012
[2]: http://www.haus-ek.org/en/content/sensing-place-0
[3]: http://www.fastcodesign.com/1671128/with-computer-code-a-swiss-intersection-becomes-a-hallucinatory-work-of-art
[4]: http://ursuladamm.de/memory-of-space-2002
[5]: http://ursuladamm.de/zeitraum-2005
[6]: http://ursuladamm.de/598
[7]: http://en.wikipedia.org/wiki/Self-Organizing_Map
[8]: http://www.k2g2.org/blog:bit.craft:codex_processianus
[9]: http://www.k2g2.org/blog:bit.craft:flowfield_driven_drawing
[10]: http://ursuladamm.de/trace-pattern-ii-1998

