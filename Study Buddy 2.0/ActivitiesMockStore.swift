//
//  ActivitiesMockStore.swift
//  Study Buddy 2.0
//
//  Created by Journey Galore on 6/20/24.
//


import SwiftUI

class ActivitiesMockStore {
    
    static let activities: [ActivitiesItem] = [
        ActivitiesItem(id: 0, activityName: "METHODS", activityNameLabel: "Methods", activityImage: "midblue", selectedActivity: false),
        ActivitiesItem(id: 1, activityName: "PRACTICE", activityNameLabel: "Practice", activityImage: "lightblue", selectedActivity: false),
        ActivitiesItem(id: 2, activityName: "ASSISTANCE", activityNameLabel: "Assistance", activityImage: "yellow", selectedActivity: false)
        
    ]
    
    static let activityData: [ActivitiesData] = [
        
        ActivitiesData(id: 0, activitiesPlaces:
            [ActivitiesPlaces(id: 0, activityPlace: "Memory", activityPlaceImage: "2", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Active Recall", pointImage: "2", pointDescription: "Aspect: Active recall is the practice of actively stimulating memory during learning, typically by testing oneself on the material. Problem: Simply re-reading notes can give the illusion of competence but may not aid in actual memory retention.Method: Use flashcards or practice tests to regularly quiz yourself on the material you've learned. This forces you to retrieve information from memory, strengthening the knowledge and making it easier to recall in the future."),
                                                                                                                       
            ActivitiesFamousPoints(id: 1, pointName: "Retention", pointImage: "3", pointDescription: "Aspect: Spaced repetition involves reviewing information at increasing intervals to exploit the psychological spacing effect.Problem: Cramming can lead to quick forgetting. Without spaced repetition, memory retention can decrease rapidly.Method: Use a spaced repetition system (SRS) or app to plan out your study sessions. Review the material after one day, then two days, then four days, and so on, to enhance long-term retention."),
            
            ActivitiesFamousPoints(id: 2, pointName: "Problem Solving", pointImage: "4", pointDescription: "Aspect: Interleaving is the process of studying different subjects or topics in a single study session.Problem: Focusing on one type of problem for too long can make it harder to apply knowledge to different contexts.Method: Mix up the order of the subjects you study in each session. This can improve problem-solving skills because it teaches you to recognize and apply different strategies.")
            ]),
             
             ActivitiesPlaces(id: 1, activityPlace: "Connections", activityPlaceImage: "5", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Kuta", pointImage: "kuta", pointDescription: "Aspect: Concept mapping involves creating visual representations of the relationships among various concepts.Problem: Students often struggle to see how different concepts connect with each other, which can impede understanding of the material.Method: Draw diagrams that link ideas together, showing how each concept is related. This can help in understanding and remembering the material by creating a visual context."),
             
                 ActivitiesFamousPoints(id: 1, pointName: "Adaptability", pointImage: "6", pointDescription: "Aspect: Dual coding theory proposes that combining verbal and visual information can help people learn more effectively.Problem: Relying on only one type of information (e.g., just text) may not cater to all learning preferences.Method: When studying, pair information with relevant visuals. For instance, when you write down a definition, draw a picture that represents the concept, or find a diagram that illustrates it.")
             ]),
             
             ActivitiesPlaces(id: 2, activityPlace: "Efficiency", activityPlaceImage: "7", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Metacognitive Strategies", pointImage: "7", pointDescription: "Aspect: Metacognition involves being aware of one's own learning process and adapting strategies accordingly.Problem: Students may not reflect on the effectiveness of their study methods, leading to inefficient learning.Method: After studying, take time to reflect on what methods are working and what aren't. Adjust your study habits based on what you find most effective."),
                 
                  ActivitiesFamousPoints(id: 1, pointName: "Summarization", pointImage: "8", pointDescription: "Aspect: Summarizing content in your own words to understand and remember it better.Method: After reading a chapter or section, write a brief summary highlighting the key points without looking at the text.")
             ])],
                      
            activityResources:
        
            [ActivityResource(id: 0, resourceName: "Test Prep", resourceDescription: "add here!!", resources:
                [ActivityResourcesItem(id: 0, resourceName: "Teaching Others", resourceImage: "9", resourceDescription: "Aspect: Explaining material to someone else as a way to solidify your own understanding.Method: Organize a study group where you take turns teaching each other new content."),
                 ActivityResourcesItem(id: 1, resourceName: "Self-Explanation", resourceImage: "10", resourceDescription: "Aspect: Clarifying the reasons behind why something works or why it’s important to understand.Method: After solving a problem or completing a topic, explain to yourself the steps taken and why each step is necessary."),
                 ActivityResourcesItem(id: 2, resourceName: "Practice Testing", resourceImage: "11", resourceDescription: "Aspect: Testing yourself on the material as an effective way to enhance memory retention.Method: Create practice tests or use past papers to challenge your recall under exam conditions.")]),
                
                ActivityResource(id: 1, resourceName: "Management", resourceDescription: "add here!", resources: [ActivityResourcesItem(id: 1, resourceName: "Time Management", resourceImage: "12", resourceDescription: "Aspect: Efficiently organizing study time and workload.Method: Use planners or digital calendars to allocate specific times for studying different subjects or topics."),
                     ActivityResourcesItem(id: 2, resourceName: "Goal Setting", resourceImage: "4", resourceDescription: "Aspect: Establishing clear, measurable, and achievable study objectives.Method: Set SMART (Specific, Measurable, Achievable, Relevant, Time-bound) goals for each study session."),
                     ActivityResourcesItem(id: 3, resourceName: "Reading Strategies", resourceImage: "8", resourceDescription: "Aspect: Effective reading techniques that enhance comprehension.Method: Use the SQ3R method (Survey, Question, Read, Recite, Review) when approaching complex texts.")]),
                
                ActivityResource(id: 2, resourceName: "Note-Taking", resourceDescription: "add here!", resources: [ActivityResourcesItem(id: 1, resourceName: "Note-Taking", resourceImage: "3", resourceDescription: "Aspect: Recording information in an organized manner to aid retention and review.Method: Develop a consistent note-taking system like Cornell notes, mind maps, or outlines."),
                     ActivityResourcesItem(id: 2, resourceName: "Mnemonic Devices", resourceImage: "6", resourceDescription: "Aspect: Using memory aids to remember information.Method: Create acronyms, phrases, or rhymes to help remember lists or complex information."),
                     ActivityResourcesItem(id: 3, resourceName: "Question Generation", resourceImage: "7", resourceDescription: "Aspect: Creating questions from the material to challenge understanding and recall.Method: Formulate potential exam questions as you study and try to answer them without looking at your notes.")])
                ]),
       
        ActivitiesData(id: 1, activitiesPlaces: [
        
            ActivitiesPlaces(id: 1, activityPlace: "Thinking", activityPlaceImage: "12", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Analogical Thinking", pointImage: "9", pointDescription:"Aspect: Making connections between new material and concepts you already understand.Method: Identify similarities between the study material and familiar situations or ideas.")]),
            ActivitiesPlaces(id: 2, activityPlace: "Focused & Diffused Thinking", activityPlaceImage: "3", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Focused & Diffused Thinking", pointImage: "3", pointDescription: "Aspect: Alternating between intense concentration and relaxed exploration.Method: Study intensely for a period, then take a break to engage in an unrelated activity, allowing the brain to make background connections.")]),
            ActivitiesPlaces(id: 3, activityPlace: "Environmental Structuring", activityPlaceImage: "2", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Environmental Structuring", pointImage: "chamonix", pointDescription: "Aspect: Creating a study environment that fosters concentration and minimizes distractions.Method: Set up a dedicated, quiet study space, and use tools like noise-cancelling headphones to maintain focus.")])],
                      
                      
            activityResources:
       
           [ActivityResource(id: 0, resourceName: "Emotional Aspect", resourceDescription: "It's important to recognize the range of feelings and states that can influence learning. Here are 15 considerations and strategies to manage emotional aspects effectively:", resources:
               [ActivityResourcesItem(id: 0, resourceName: " Stress Management", resourceImage: "10", resourceDescription: "Recognize when study stress is impacting your health or focus and use relaxation techniques like deep breathing, meditation, or yoga to manage stress"),
                ActivityResourcesItem(id: 1, resourceName: "Anxiety Reduction", resourceImage: "7", resourceDescription: "Combat study-related anxiety by breaking tasks into smaller, manageable parts and focusing on one at a time"),
                ActivityResourcesItem(id: 2, resourceName:"Overcoming Fear of Failure", resourceImage: "5", resourceDescription: "Address fear of failure by setting realistic goals and viewing challenges as opportunities to learn rather than as threats.")]),
               
               ActivityResource(id: 1, resourceName: "Development", resourceDescription: "", resources: [ActivityResourcesItem(id: 1, resourceName: "Developing Resilience", resourceImage: "3", resourceDescription: "Build resilience by reflecting on past successes, maintaining a positive outlook, and being adaptable to change."),
                    ActivityResourcesItem(id: 2, resourceName: "Enhancing Self-Efficacy", resourceImage: "9", resourceDescription: "Improve belief in your own abilities by celebrating small victories and tracking progress."),
                    ActivityResourcesItem(id: 3, resourceName: "Emotional Regulation", resourceImage: "11", resourceDescription: "Learn to recognize and regulate emotions like frustration or disappointment through mindfulness and self-awareness practices.")]),
               
               ActivityResource(id: 2, resourceName: "Avoiding Burnout", resourceDescription: "", resources: [ActivityResourcesItem(id: 1, resourceName: "Finding Motivation", resourceImage: "2", resourceDescription: "Identify personal motivations for studying, such as long-term goals or intrinsic interests, to maintain drive."),
                    ActivityResourcesItem(id: 2, resourceName: "Maintaining Enthusiasm", resourceImage: "6", resourceDescription: "Keep enthusiasm alive by varying study routines, incorporating topics of interest, and using engaging study methods"),
                    ActivityResourcesItem(id: 3, resourceName: "Coping with Loneliness", resourceImage: "10", resourceDescription: "If studying feels isolating, create study groups or find online communities to connect with peers.")])
               ]),
       
       
        ActivitiesData(id: 2, activitiesPlaces: [
        
            ActivitiesPlaces(id: 1, activityPlace: "Mentality", activityPlaceImage: "12", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Dealing with Boredom", pointImage: "4", pointDescription: "Prevent boredom by using interactive study methods, like games or discussions, and taking regular breaks."),
            
                ActivitiesFamousPoints(id: 1, pointName: "Building Emotional Support", pointImage: "7", pointDescription: "Establish a support system with friends, family, or mentors who understand and encourage your academic journey.")
            ]),
            
            ActivitiesPlaces(id: 2, activityPlace: "Handling Pressure", activityPlaceImage: "9", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Handling Pressure", pointImage: "2", pointDescription: "When under pressure, focus on organization and prioritizing tasks to reduce overwhelm."),
                
                ActivitiesFamousPoints(id: 1, pointName: "Boosting Confidence", pointImage: "2", pointDescription: "Prepare thoroughly for exams and presentations to boost confidence; practice positive self-talk and visualization techniques.")
            
            ]),
            ActivitiesPlaces(id: 3, activityPlace: "More Emotional Aspects", activityPlaceImage: "9", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Managing Expectations", pointImage: "12", pointDescription: "Set realistic expectations for study outcomes to avoid disappointment; understand that mastery is a process."),
                  
                ActivitiesFamousPoints(id: 1, pointName: "Celebrating Achievements", pointImage: "8", pointDescription: "Take time to celebrate achievements, no matter how small, to reinforce positive emotions associated with studying.")

            ])],
                      
                      
            activityResources:
       
           [ActivityResource(id: 0, resourceName: "Back to the Academics", resourceDescription: "Here are seven similar academic tips and strategies that can help students enhance their study habits and academic performance", resources:
               [ActivityResourcesItem(id: 0, resourceName: "FEYNMAN Technique", resourceImage: "3", resourceDescription: "This method involves studying a concept and then explaining it in your own words as if teaching someone else. It’s a powerful way to understand and remember concepts because it forces you to simplify and clarify your thinking"),
                ActivityResourcesItem(id: 1, resourceName: "SQ3R Method", resourceImage: "12", resourceDescription: "Similar to PSQ3R but slightly different, SQ3R stands for Survey, Question, Read, Recite, and Review. This approach helps with comprehending and memorizing text-based information."),
                ActivityResourcesItem(id: 2, resourceName: "CORNELL Note-Taking", resourceImage: "4", resourceDescription: " A systematic format for condensing and organizing notes without laborious recopying, by dividing paper into sections for notes, cues, and summary to help with reviews and exams.")]),
               
               ActivityResource(id: 1, resourceName: "", resourceDescription: "5", resources: [ActivityResourcesItem(id: 1, resourceName: "POMODORO Technique", resourceImage: "5", resourceDescription: "This time management method involves using a timer to break work into intervals, traditionally 25 minutes in length, separated by short breaks. It’s great for maintaining focus and preventing burnout."),
                    ActivityResourcesItem(id: 2, resourceName: " LEITNER System", resourceImage: "6", resourceDescription: " A method of flashcard study where cards are sorted into groups based on how well the learner knows each one in the Leitner's learning box. Cards are promoted or demoted, which helps with spaced repetition and active recall."),
                    ActivityResourcesItem(id: 3, resourceName: "Elaborative Interrogation", resourceImage: "7", resourceDescription: " This technique enhances learning by prompting students to generate an explanation for why a stated fact or concept is true. The practice of asking why actively engages the student in the learning process and encourages them to make connections to prior knowledge, which facilitates deeper understanding and memory retention. For example, if a student is learning about the water cycle, they would ask themselves, Why does evaporation occur? and then work out the answer in detail, reinforcing their understanding of the principles behind the phenomenon.")]),
               
               ActivityResource(id: 2, resourceName: "", resourceDescription: "", resources: [ActivityResourcesItem(id: 1, resourceName: "You Are More Than a Grade", resourceImage: "8", resourceDescription: " You are more than the grades you receive. Your value doesn't decrease based on a score. I made this app to help you see that, to provide you with methods to enhance learning, not just grading."),
                    ActivityResourcesItem(id: 2, resourceName: "Patience is Progress", resourceImage: "9", resourceDescription: "Remember, patience is a form of progress. Every time you choose to be patient with yourself, you're building the strength to overcome challenges. As a high school junior who's walked in your shoes, I understand the hurdles and the pressures."),
                    ActivityResourcesItem(id: 3, resourceName: "hi :)", resourceImage: "1", resourceDescription: "From one student to another, I hope this app serves as a bridge between AI and education, helping you discover and maintain effective study methods that can transform the way you learn. Remember, the goal is not just to excel academically but to grow as a learner and as a person. - Journey T.D")])
               ])
       
    ]
    
    static let shoppingCartData: [ActivitiesCartItem] = [
           ActivitiesCartItem(itemID: "1", itemName: "", itemPrice: 450, itemColor: "Red", itemManufacturer: "Elan Explore", itemImage: "snowboardred"),
           ActivitiesCartItem(itemID: "2", itemName: "", itemPrice: 235, itemColor: "Yellow", itemManufacturer: "Explorers", itemImage: "campingtent"),
           ActivitiesCartItem(itemID: "3", itemName: "", itemPrice: 825, itemColor: "Black", itemManufacturer: "WaveExplore", itemImage: "surfboard")
       ]
    
}
