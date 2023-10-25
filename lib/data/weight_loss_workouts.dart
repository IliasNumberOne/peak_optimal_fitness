
import 'package:peak_optimal/models/models.dart';

const workouts = 'assets/images/workouts';

final List<Workout> weightLossWorkouts = [
  Workout(
    id: 30,
    name: 'For weight loss',
    image: '$workouts/image31.png',
    bigImage: '$workouts/big_image31.png',
    description:
    """HIIT is an effective workout for burning calories and improving your fitness. Do it regularly and include it in your fitness program and it will help you achieve your weight loss goals.""",
    steps: [
      """*Purpose:* Increase cardio exercise and increase metabolic rate.""",
      """*Description:* **1. Warm-up:** Start your workout with a short warm-up for 5-10 minutes. You can do the following exercises: 
      - Running in place 
      - March to the rhythm of the music 
      - Circular movements with arms and legs.""",
      """**2. Intervals:** A HIIT workout consists of high-intensity intervals of activity alternating with periods of active rest. Here is an example of such a workout: 
      - **Interval 1 (High Intensity):** Jog in place or jog quickly for 30 seconds. Aim to get your heart rate up and burn calories as much as possible. 
      - **Interval 2 (Active Rest):** Immediately after the intense period, proceed to active rest for 30 seconds. This could be walking in place or running slowly. Recover, but don't stop completely. 
      - Repeat this cycle 10-15 times.""",
      """**3. Cool-down:** At the end of the intervals, cool down to gradually reduce the intensity of your workout. Walk in place and do a series of stretches for different muscle groups. Take 5-10 minutes to cool.""",
      """**Adviсe:** 
      - It is important to ensure proper breathing during intervals. Inhale through your nose, exhale through your mouth. 
      - Start training with shorter intervals and gradually increase their duration as your fitness improves. 
      - Maintain high intensity during intervals, but do not forget about active rest for recovery. 
      - Consult your doctor before starting HIIT training, especially if you have any medical conditions or restrictions.""",
    ],
    premium: true,
  ),
  Workout(
    id: 31,
    name: 'Strength Training',
    image: '$workouts/image32.png',
    bigImage: '$workouts/big_image32.png',
    description:
    """Strength training will help you increase muscle mass, strengthen your body, and burn more calories. It also promotes overall improvement in physical fitness.""",
    steps: [
      """*Purpose:* Increase muscle mass, which will help increase your metabolic rate and burn more calories even at rest.""",
      """*Description:* **1. Warm-up:** Start your workout with a short warm-up of 5-10 minutes to prepare your muscles for the load. You can include the following exercises: 
      - Jumping in place 
      - March on the spot 
      - Circular movements with arms and legs""",
      """**2. Exercises for different muscle groups:** 
      - You need to do exercises for different muscle groups to ensure a balanced workout. Here are some examples: **Pectoral muscles:** 
      - Push-ups (push-ups) 
      - Bench press with dumbbells or barbell 
      **Back:** 
      - Upper block pull 
      - Hyperextensions for the back **Legs:** 
      - Squats - Swing your leg 
      - Hack-lift on toes 
      **Shoulders:** 
      - Dumbbell overhead raises 
      - Shoulder presses 
      **Hands:** 
      - Pull-ups on a horizontal bar 
      - Biceps and triseps exercises""",
      """**3. Sets and reps:** 
      - For each exercise, perform 3-4 sets. 
      - The number of repetitions in each set can vary, but 10-15 repetitions are often used.""",
      """**4. Finishing (Cool-down):** When you finish your exercises, cool down. Walk in place and do a few stretches for different muscle groups. Take 5-10 minutes to cool.""",
      """**Adviсe:** 
      - Follow proper exercise technique to avoid injury. 
      - Start with light weights or your own body weight if you are new to strength training, and gradually increase the load. 
      - Give your muscles time to recover between workouts, usually 48 hours per muscle group. 
      - Strength training should be done 2-3 times a week.""",
    ],
    premium: true,
  ),
  Workout(
    id: 32,
    name: 'Long-Distance Running',
    image: '$workouts/image33.png',
    bigImage: '$workouts/big_image33.png',
    description:
    """Long-distance running can help strengthen your heart and lungs, improve your endurance, and help you lose weight. This workout can also help you relax and relieve stress. Over time, you will be able to increase the duration and intensity of your running workouts, achieving better results.""",
    steps: [
      """*Purpose:* Improve endurance, increase cardio activity and burn calories.""",
      """*Description:* **1. Warm-up:** Start your workout with a short warm-up of 5-10 minutes to prepare your muscles and joints for running. You can do the following exercises: 
      - Walking in place 
      - Easy sprinting
       - Stretching the legs and hips """,
      """**2. Long distance running:** 
      - Choose a place to run, be it a park, forest or path. 
      - Start running at a moderate pace. At this distance, it is more important to maintain endurance than to reach maximum speed. 
      - Start with a running duration of 30-40 minutes and gradually increase the distance as your fitness improves. 
      - Maintain comfortable breathing at all times.""",
      """**3. Cool-down:** After finishing your run, cool down to gradually reduce the intensity of your workout and lower your heart rate. Walk in place and do stretches for your legs and hips. Take 5-10 minutes to cool.""",
      """ **Adviсe:** 
      - Gradually increase the duration and intensity of your running to avoid injury and fatigue. 
      - Choose to run in comfortable and suitable shoes. 
      - Constantly monitor your breathing and comfort level while running. 
      - It is important to eat properly before and after running to provide your body with energy and restore lost nutrients.""",
    ],
    premium: true,
  ),
  Workout(
    id: 33,
    name: 'Cycling',
    image: '$workouts/image34.png',
    bigImage: '$workouts/big_image34.png',
    description:
    """Cycling is great for losing weight, strengthening your lower body, and improving cardiovascular health. Gradually increase the duration and intensity of your cycling workouts to achieve the best results.""",
    steps: [
      """*Purpose:* Add variety to your cardio workout, strengthen your lower body and burn calories.""",
      """*Description:* **1. Warm-up:** Start your workout with a short warm-up of 5-10 minutes to prepare your muscles and joints for cycling. You can do the following exercises: - Walking in place - A few minutes of light cycling""",
      """**2. Cycling trip:** 
      - A bicycle is an excellent means of cardio training. Choose a place to walk 
      - it could be a street, a bike path, a park, or a gym machine. 
      - Start your bike ride at a moderate pace. Continue pedaling for 45-60 minutes. 
      - Maintain stable breathing and pulse.""",
      """**3. Intensity:** 
      - To increase the intensity of your workout, include uphill and downhill sections if possible. 
      - Increase your tempo and pedaling force on the uphill sections, then recover on the downhill sections.""",
      """**4. Cool-down:** At the end of your bike ride, cool down to gradually reduce the intensity of your workout. Continue pedaling in place at a moderate pace for 5-10 minutes.""",
      """**Adviсe:** 
      - It is important to choose the right bike and make sure it is adjusted to your height and preferences. 
      - Wear a helmet and other safety equipment when cycling outside. 
      - Maintain a high level of hydration during exercise, especially in hot weather. 
      - Cycling can be a wonderful way to relax and enjoy nature.""",
    ],
    premium: true,
  ),
  Workout(
    id: 34,
    name: 'Basketball Workout',
    image: '$workouts/image35.png',
    bigImage: '$workouts/big_image35.png',
    description:
    """Basketball training is a great way not only to lose weight, but also to improve physical fitness, diversify your training program and lift your mood. This workout also develops coordination and reaction speed.""",
    steps: [
      """*Purpose:* Improve coordination, endurance, burn calories and increase physical activity.""",
      """*Description:* **1. Warm-up:** Start your workout with a short warm-up of 5-10 minutes to prepare for basketball practice. You can do the following exercises: - Walking in place - Easy jumping in place - Warm up with the ball (move with the ball, make passes)""",
      """**2. Training on the basketball court:** - Start by running around the warm-up area. Continue jogging for 5-10 minutes. - Then start playing basketball. You can play alone or invite friends to play. - During the game, actively run, jump, make passes and throws. - Play for at least 45 minutes.""",
      """**3. Intensity:** - Try to keep your gaming intensity high to increase your cardio and burn calories. - It is important to monitor your throwing and passing technique to avoid injury.""",
      """**4. Cool-down:** After completing your basketball court workout, cool down to gradually reduce the intensity of your workout. Walk in place, stretch and relax.""",
      """**Adviсe:** - Be sure to wear proper basketball shoes and protective equipment if playing in a contact game. - Make sure the area is in good condition and safe to play on. - Include enough water in your diet to stay hydrated while playing.""",
    ],
    premium: true
  ),
];
