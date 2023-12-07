# Silk-Road to Implement Horizontal and Vertical Views In Swift/IOS

**_Here’s to the round pegs in the square holes.._**

**Good afternoon**, According to **Cairo local time**, Talent is **God-given;** Sharing knowledge is the **best thing** I can do to **show my gratitude to him**, 

Sometimes I use **people's tricks**, and sometimes **I create mine**, this is life, that is how things move in the **tech/dev communities**, and that is why **Western move very very fast in software development**, مفيش بكاسة هناك.

And I wanna see **Real-World** projects in **Egyptian Tech-Community** and with **Elite-Community** especially, so.. why don't I start doing that with myself? 
I like to make people **better around me**, and to be honest; **Fair competition** is better than **Competing alone**, If they don't **teach me**, I will **teach people**, I know there are a lot of **good people inside out there**, instead of **shit and dirt I met**, your fingers is **not the same**, 

## Requmintes:
- Xcode
- Auto-Layout Warrior
- UIScrollView Component

## Lighting The-Darkness In our brains:

As one of the **Elite-Developers ( IOS )**, I deal with a lot of different views every day, **UILabel**, **UIButton**, **UIView**,  **UITableView**... and so on, we could say they is the core of any software, 

But a component like **UIColorWell** is just a bunch of code which leads me to go to the official documentation to just know how it works.. But with the core, **Deep analysis and understanding is my first and only road**.

Let's be honest dudes, In **Tech-Community**, we use a lot of things without even **understanding them well**, we just need to make it **works**  ( even me sometimes LOL ), and **that why** a lot of bugs appear here and there for **no reason**. 
If we **understand them well**, we will throw out **QA engineer** from **our game** LOL.

## LLDB - The Swiss army knife of Xcode:

As I said, I **take one path**, then make my decisions **without a step-back!**

This is a simple **view hierarchy graph**, for an application using **UITableView Component**, 

![](https://raw.githubusercontent.com/shadyelmaadawy/Silk-Road-to-Implement-Horizontal-and-Vertical-Views-In-Swift-IOS/master/Screenshots/1.png)

it is **simple**, with **no magic** here, or **heavy auto-layout constraints**.

![](https://raw.githubusercontent.com/shadyelmaadawy/Silk-Road-to-Implement-Horizontal-and-Vertical-Views-In-Swift-IOS/master/Screenshots/2.png)

But it **shows something**, hummm, **UIScrollView** 🧐, what, wait, **what does this mean**?

-: It means **UITableView** shows a **few number of cells**, but when you **scroll the-view**, you will see **more and more**.

= All of **us** know this **Shady**, still there is no-magic, **anyone knows that**, what is the problem now **O philosopher**?! Should it show your **ex-girlfriend’s** photo or what?! 😑

-: No no no, I do not wanna see her anymore, but what will happen if **we rotate** the screen? 🤔

![](https://raw.githubusercontent.com/shadyelmaadawy/Silk-Road-to-Implement-Horizontal-and-Vertical-Views-In-Swift-IOS/master/Screenshots/3.png)

-: It is **rotated**, and shows the view **without any problem**, **huuuuummm Interesting!** 💡

## Inference:

If we use **UISrollView** Component, we can **rotate** the screen **without problem;** but to **achieve that**, we need to understand **Auto-Layout Engine** and **how it's working correctly**,

I **recommend** [RayWenderlich - Auto Layout by Tutorials Book ](https://printige.net/product/auto-layout-by-tutorials/) for **this mission!**

## Actions Speak Louder Than Words 🎲:


First, I will turn on **my magic** with 2 Views, **UIScrollView**, and **UIView** ( as a container ), and I will Layout them in the **Parent View**:

![](https://raw.githubusercontent.com/shadyelmaadawy/Silk-Road-to-Implement-Horizontal-and-Vertical-Views-In-Swift-IOS/master/Screenshots/4.png)

= فين السحر يعني محدش شاف اكشن، ولا هو بمبكة وهمبكة وهرتلة في الكلام وخلاص…

-: Dude be **patient**, I will add 2 **constraints** In UIScrollView

![](https://raw.githubusercontent.com/shadyelmaadawy/Silk-Road-to-Implement-Horizontal-and-Vertical-Views-In-Swift-IOS/master/Screenshots/5.png)

= Okay… now you stopped **saying shit**, keep going, what does **that mean**?

-: That means the **width and height of the container** view will be **bigger than or equal to scroll view width and height**,

= Oh really? ***damn you Shady***.

-: I mean the container will be **“زي المطاط”**, it can be bigger when needed ( **enable scroll mode** ) or be the same ( **disable scroll mode when not needed** ),

= Okay how do we enable **“مطاط mode”**?

This is simple, but let’s **layout our views** and try **horizontal** and **vertical mode**,

![](https://raw.githubusercontent.com/shadyelmaadawy/Silk-Road-to-Implement-Horizontal-and-Vertical-Views-In-Swift-IOS/master/Screenshots/6.png)

Vertical mode works **perfectly**,

![](https://raw.githubusercontent.com/shadyelmaadawy/Silk-Road-to-Implement-Horizontal-and-Vertical-Views-In-Swift-IOS/master/Screenshots/7.png)

Unfortunately, horizontal **not**…

![](https://raw.githubusercontent.com/shadyelmaadawy/Silk-Road-to-Implement-Horizontal-and-Vertical-Views-In-Swift-IOS/master/Screenshots/8.png)

**Why**?

Because there is **no constraints** to " **push things down** " and the subviews is not as that much number, if we are in a **Real-World project**, your **paddings in subviews will take care of this**,

But let’s apply it **manually**, I will use **greaterThanOrEqualTo** constraints to make the **same views in the same position**, and **“When needed”** will push things down,

![](https://raw.githubusercontent.com/shadyelmaadawy/Silk-Road-to-Implement-Horizontal-and-Vertical-Views-In-Swift-IOS/master/Screenshots/9.png)

Let's try.. **BINGO**

![](https://raw.githubusercontent.com/shadyelmaadawy/Silk-Road-to-Implement-Horizontal-and-Vertical-Views-In-Swift-IOS/master/Screenshots/PoC.gif)

Did you catch it? if not, **the source code included  ^_***


## To Infinity and beyond!

I like to achieve **victory in hard battles** instead of **ordinary victories**, and that is the reason for **I OWN A NAME** ; )

## Credits
### Copyright (©) 2023, Shady K. Maadawy, All rights reserved. 
 [@shadudiix](https://github.com/shadyelmaadawy) 🐋
