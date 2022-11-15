import 'package:flutter/material.dart';

import 'HomePageCategories.dart';
import 'HomePageNavbar.dart';
import 'HomePageSlider.dart';
import 'main.dart';

class ShowStories extends StatelessWidget {
  const ShowStories({Key? key,required this.storyName,required this.storyDetails , required this.cate}) : super(key: key);

  final String storyName;
  final String storyDetails;
  final String cate;


   String chooseStory(){
     String mainDetails = 'Oops Story NotFuond!!';
     if(this.cate =='Funny' && this.storyDetails =='1'){
      mainDetails = 'One day, Nasreddin Hodja goes to a Turkish bath. As he is'
          ' offered an old towel and a robe, he is upset that nobody is paying '
          'attention to him. He says nothing but leaves a hefty tip at the counter'
          ' while returning.A week later, he goes back and is very well received this '
          'time. He is given a royal treatment and is also provided extra services. Hodja'
          ' is happy but hardly leaves any tip.Everyone is surprised and curious to know '
          'why Hodja left just a small tip this time.He says, “Today’s tip '
          'is for the services offered during the last visit. And the tip given'
          ' then was for today. We are even now';
    }
    else if(this.cate =='Funny' && this.storyDetails=='2'){
      mainDetails = 'Two friends, who are advocates, visit a restaurant and order'
          ' drinks. They do not order anything to eat as they have a sandwich each'
          ' in their briefcases. The advocates take out their sandwiches and start'
          ' eating them. The waiter comes, and sternly says, “You are not allowed'
          ' to eat your own sandwiches inside the restaurant.”The smart friends '
          'look at each other, laugh and exchange their sandwiches.';

    }
    else if(this.cate =='Funny' && this.storyDetails=='3'){
      mainDetails='An old man visits a doctor to seek remedy for the '
          'terrible pain in his leg. The doctor replies saying, “I am '
          'sorry but this could be due to your old age.” He further explains'
          ' why nothing can be done to help with the pain.The old man gets'
          ' angry and questions the doctor about his ability and expertise. '
          'This angers the doctor, who asks the old man, “How can you say that'
          ' I know nothing and I am at fault for the pain in your leg?”The old '
          'man innocently replies, “It is quite obvious you are wrong. My other '
          'leg is of the same age too, but has no pain at all!”';
     }
    else if(this.cate =='Funny'&& this.storyDetails=='4'){
      mainDetails='In a faraway city, lived a unique couple — the elephant '
          'and his wife the ant.One day, while returning home on their scoote'
          'r after a long day’s work, happens something unexpected. They meet'
          ' with an accident. The elephant gets badly wounded, but the ant'
          ' escapes scratch proof.Guess how? Because the ant is a safe rider'
          ' and was wearing a helmet.';
     }

    else if(this.cate =='Horrors' && this.storyDetails=='1'){
      mainDetails='On a stifling tour of Florence, newlywed Caroline '
          'breaks free from her controlling husband to explore the'
          ' Italian countryside. Beyond a dusty track, on a distant hill,'
          ' a stone tower beckons … As Caroline journeys up its spiral staircase'
          ' – counting each step, relishing her freedom – the walls close in on '
          'her impossible ascent. Or is it descent? While the phallic tower as a'
          ' patriarchal totem feels a little obvious, what Laski recounts in sparse'
          ' prose is anything but: the horror is abstract, the fear suffocating,'
          ' and Caroline’s fate lurks long in the mind. By the end, you’ll be gripping '
          'the page like a rusty handrail. Laski was best known as a vinegary literary '
          'critic. The Tower was a rare foray into horror. I wish she had written more.';
     }
    else if(this.cate =='Horrors' && this.storyDetails=='2'){
      mainDetails='“The boy’s faced struggled within the plastic bag …'
          ' His eyes were grey blank holes, full of fog beneath the plastic.”'
          ' So begins the haunting of Clarke – a militant headmaster'
          ' who feels no guilt for suffocating his playmate during a'
          ' childhood prank, long ago yet not forgotten … There is'
          ' something distinctly, darkly Nabokovian about Campbell’s '
          'fiction: a shared obsession with the enigma of memory, and '
          'how we cope with it. In the Bag is a masterful example: his'
          ' blurring of past trauma with the supernatural is the literary'
          ' equivalent of knitting fog. Clarke’s cruel fate is exceptionally'
          ' nasty. Like all great horror stories, it ends with a gasp.';
     }
    else if(this.cate =='Horrors' && this.storyDetails=='3'){
      mainDetails='Of King’s 200-plus stories, I always come back '
          'to this one. Offering a day-by-day narrative drive, the'
          ' diary is perfect for short stories. In Survivor Type,'
          ' disgraced surgeon turned drug smuggler Richard Pine '
          'finds himself marooned on a barren island. As he awaits '
          'rescue, entries in his lifeboat logbook pass the time.'
          ' Nobody comes. There’s nothing to eat. He sharpens a knife'
          ' and looks at his leg … Oh boy. No ghosts, aliens, or killer'
          ' clowns. Just auto-cannibalism and stark human horror. King '
          'at his most transgressive, and best consumed on an empty'
          ' stomach. ';
     }
    else if(this.cate =='Horrors' && this.storyDetails =='4'){
      mainDetails='Poor Billy Weaver. Just turned 17,'
          ' sent to Bath on a work trip, lost, tired and '
          'with nowhere to stay. A cheap B&B and a smiling'
          ' old landlady offer salvation. And she must be'
          ' nice because she has pets … Dahl’s unflashy prose'
          ' is his secret weapon. The simple style disarms you,'
          ' only before Dahl plunges in the knife. I won’t ruin '
          'the twist but the foreshadowing is exquisitely devious.'
          ' The silent dachshund by the fire. The guest book with '
          'only two names. The landlady praising Billy’s beautiful '
          'teeth. Dahl wrote The Landlady as a ghost story, scowled '
          'at it, then changed the ending. Wise move.';
     }

    else if(this.cate =='Romantics' && this.storyDetails=='1'){
       mainDetails='She was my best friend’s best friend. '
           'She loved to write and I love to read. She preferred'
           ' Ayobami’s “Stay with me” to my Kalanithi. I thought '
           'a man should read everything under the son. Only Africa'
           ' mattered to her. We figured, we had to meet and have'
           ' that discussion in person. She showed up at my flat '
           'on a Friday night with an overnight bag. And discuss'
           ' we did. She fought dirty. Kissing me into hardness'
           ' then softness when I tried to make my point.'
           ' We temporarily suspended debate. We fucked.'
           ' She made dinner. Then ate and argued as she '
           'sat precariously perched on the corner of my'
           ' mattress to avoid a patch of wetness. She'
           ' told me about why she loved African writers.'
           ' She wanted to see our collective story in print. '
           'Telling the reality of our existence. That our'
           ' story mattered too. She refused to understand '
           'why I felt it was necessary to also read the'
           ' Khaled Husseinis’ of the world. It didn’t '
           'matter to her that the Afghani and Kenyan '
           'stories are interlinked. That night I called '
           'her “Hamshira” once. She was impressed but would'
           ' not relent. No clear argument emerged for those 3 days.'
           ' At the end of that weekend we agreed to call it a draw.'
           'The next Friday, I showed up at her apartment with an'
           ' overnight bag.I wanted a rematch.';
     }
    else if(this.cate =='Romantics' && this.storyDetails=='2'){
      mainDetails='We met on a bus to Kampala. She had red braids'
          ' with wisps of purple on. She looked delicious. And she'
          ' had the tiniest eyes. You were never too sure if she was'
          ' asleep or staring at you. She was at Makerere, studying'
          ' law. She loved school but hated the loneliness that came'
          ' with being in a foreign country. She looked forward to going '
          'back to Kenya during the long holidays. Everyone she loved'
          ' was there. Always got on the first bus home as soon as her'
          ' exams were done. But something changed that day, at least'
          ' that is what she would later tell me. That on a bus to Kampala, '
          'somewhere between Busia and Jinja she figured that she liked me,'
          ' and the jokes I told. She asked for my number when the bus stopped.'
          ' For the next 3 months, she would hang out with me in the evening '
          'after her classes and my job. She loved it. Said, it was the first'
          ' time it felt like home here. At some point she told me she loved'
          ' me. I felt it too.That end of semester, she took the last bus home.';
     }
    else if(this.cate =='Romantics' && this.storyDetails=='3'){
      mainDetails = '“He always had this ferocious look every time '
          'we made love.”That was how I described my ex’s lovemaking '
          'to the new one.We are on his pillow in my house. Naked.'
          ' Talking about all the things our ex’s did wrong. He '
          'completely misses the point of my description. He '
          'doesn’t understand that my describing his lovemaking'
          ' as tender was and is a compliment. That I enjoy it,'
          ' when he takes the time to pull off my knickers and not'
          ' tear them off. The way he stops kissing me at some point'
          ' and asks if I am okay. I am. That given the choice '
          'I want him to make love to me in exactly this way for'
          ' eternities with him. Instead, I have to assuage his ego. '
          'I tell him that he is enough. Then I look at him, and'
          ' again tell him that he means the world to me. He calms'
          ' down, apologizes for overreacting. Then he asks if I want '
          'to make love again?I do.';
     }
    else if(this.cate =='Romantics' && this.storyDetails=='4'){
      mainDetails='My dad moved in with my sister and I a year ago.'
          ' He was sick and too weak to stay by himself. Though he'
          ' claimed he wanted to be closer to his kids. I think, he'
          ' was feeling the loneliness a lot more ever since mum '
          'died.Normally, he would wake up early and go sit on the '
          'balcony. Said he loved how the sun rose differently every'
          ' day in my hood. Like God and his angels were playing a'
          ' game and whoever won decided how the sun would look like '
          'in the morning.That morning, I woke up early too. I liked to'
          ' sometimes spend a few minutes with him before going to work.'
          ' He wasn’t on the balcony. I figured he was too tired today.'
          ' Went to his room to check up on him. I found him on the bedside'
          ' chair, seated, still in his pyjamas but wearing his house shoes.'
          ' He hated the tiled floor, always complained they were too cold.'
          ' I tried to wake him up. His skin felt a little cold, and his pulse'
          ' was missing. He looked so peaceful there. So for the next hour I sat'
          ' with him, told him all the reasons I was grateful for him. I initially'
          ' thought of calling my sister but I thought better of it. She deserved that'
          ' extra hour of sleep before her world broke.';
     }

    return mainDetails;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
           Stack(children: [
            Expanded(
              child: Padding(
           padding: EdgeInsets.all(8.0),
        child: Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                       icon: const Icon(Icons.arrow_back)),
                ),
              ),
            ),
            ),

             Expanded(
               child: Padding(
                 padding: EdgeInsets.all(8.0),
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                       this.storyName,
                       style: TextStyle(
                           fontSize: 22,
                           fontWeight: FontWeight.w100,
                           color: Colors.lightBlue),
                     ),
                     const SizedBox(
                       height: 10,
                     ),
                     Expanded(
                       child: Container(
                         height: 350,
                         margin: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                         padding:  EdgeInsets.all(10),
                         color: Colors.black12,
                         child:  Expanded(
                           child: Text(
                             chooseStory(),
                             textAlign: TextAlign.justify,
                             style: TextStyle(fontSize: 14, color: Colors.black),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
          ]),
        ),
    );
  }
}
