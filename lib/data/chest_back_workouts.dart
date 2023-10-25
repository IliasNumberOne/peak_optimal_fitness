import 'package:peak_optimal/models/models.dart';

const workouts = 'assets/images/workouts';

final List<Workout> chestBackWorkouts = [
  Workout(
    id: 0,
    name: 'Classic Strength Training',
    image: '$workouts/image1.png',
    bigImage: '$workouts/big_image1.png',
    description:
        """It is important to perform the exercises with proper technique, controlling the movements and avoiding overstretching. It is recommended to warm up and warm the muscles before starting the exercise.
    This workout is designed to develop strength and mass in the chest and back muscles. It includes a variety of exercises that target both of these muscle groups.""",
    steps: [
      """1. **Dumbbell bench press**: 
   - Prepare by lying down on a bench with dumbbells in each hand.
   - Raise the dumbbells over your chest with your palms facing forward.
   - Slowly lower the dumbbells to your chest, then powerfully raise them back up.
   - Perform 4 sets of 8-10 repetitions.""",
      """2. **Vertical Block Pull**:
   - Sit at a vertical block machine and grasp the handles.
   - Bend at the lower back and then slowly bend forward, stretching your upper back.
   - Return to the starting position by bending your back in the opposite direction.
   - Perform 4 sets of 8-10 repetitions.""",
      """3. **Barbell Bench Press**:
   - Lie on a bench with the barbell slightly wider than shoulder width apart.
   - Raise the bar and lower yourself to your chest.
   - Then raise the barbell up until your arms are fully straightened.
   - Perform 4 sets of 6-8 reps.""",
      """4. **Dumbbell Pullover**:
   - Lie down on a bench so that your upper back is on it.
   - Grab one dumbbell and raise it overhead, arms slightly bent.
   - Slowly lower the dumbbell behind your head and then raise it back up.
   - Perform 3 sets of 10-12 reps.""",
      """5. **Hyperextensions**:
   - Get into a position on a hyperextension machine with your feet locked.
   - Bend your body forward at the pelvic joint and then rise back up to a horizontal position.
   - Perform 3 sets of 12 to 15 repetitions.""",
    ],
  ),
  Workout(
    id: 1,
    name: 'Compound Workout',
    image: '$workouts/image2.png',
    bigImage: '$workouts/big_image2.png',
    description:
        """Remember proper exercise technique, control the movements and avoid overexertion. Warm up and warm up your muscles before starting the exercise, and ensure adequate rest between sets.""",
    steps: [
      """1. **Pull-ups (wide grip)**:
   - Find a tourniquet or bars and grasp them with a wide grip.
   - Hanging on your hands, pull yourself up so that your chest is close to the bar.
   - Then slowly lower yourself down.
   - Perform 4 sets of the maximum number of repetitions. If you can't do pull-ups, use an accompanying assistant or a mixed technique with feet resting on the bar.""",
      """2. **Dumbbell bench press**:
   - Lie on a bench with dumbbells in each hand, palms facing forward.
   - Raise the dumbbells over your chest, arms outstretched.
   - Slowly lower the dumbbells to your chest, then raise them back up.
   - Perform 4 sets of 8-10 repetitions.""",
      """3. **Barbell Abdominal Pull**:
   - Sit in front of the machine with the bottom handle and grasp it.
   - Perform a barbell abdominal pull by bending your elbows and squeezing your back.
   - Smoothly return to the starting position.
   - Perform 4 sets of 8-10 repetitions.""",
      """4. **Dumbbell Incline Bench Press**:
   - Set up the bench in an incline position (at about a 45 degree angle).
   - Lie on the bench with dumbbells in each hand.
   - Raise the dumbbells over your chest, arms slightly bent.
   - Slowly lower the dumbbells to your chest and then raise them back up.
   - Perform 3 sets of 10-12 repetitions.""",
      """5. **Hyperextensions**:
   - Get into a position on a hyperextension machine with your feet locked.
   - Bend your body forward at the pelvic joint and then rise back up to a horizontal position.
   - Perform 3 sets of 12 to 15 repetitions.""",
    ],
  ),
  Workout(
    id: 2,
    name: 'Volume Supersets',
    image: '$workouts/image3.png',
    bigImage: '$workouts/big_image3.png',
    description:
        """Remember to follow proper exercise technique and adjust the weight to do the given number of repetitions with proper form. Remember to provide adequate rest between supersets and exercises.
        In this workout we will perform supersets, switching between chest and back. The superset approaches are performed without a break between exercises, and you can take a short rest between supersets.""",
    steps: [
      """1. **Superset 1: Dumbbell Bench Press and Pull-ups (snatch)**

   - **Dumbbell bench press**:
     - Lie on a bench with dumbbells in each hand, palms facing forward.
     - Raise the dumbbells over your chest, arms extended.
     - Slowly lower the dumbbells to your chest, then raise them back up.
     - Perform 3 supersets of 8-10 reps.

   - **Pull-ups (pull-ups)**:
     - Find a tourniquet or bars and grasp them at shoulder width.
     - Hanging on your hands, pull yourself up so that your chest is close to the bar.
     - Then slowly lower yourself down.
     - Perform 3 supersets for the maximum number of reps.""",
      """2. **Superset 2: Vertical Block Pull-Up and Dumbbell Bench Press**.

   - **Upright Block Pull**:
     - Sit at the vertical block machine and grasp the handles.
     - Bend at the lower back and then slowly bend forward, stretching your upper back.
     - Return to the starting position by bending your back in the opposite direction.
     - Perform 3 supersets of 8-10 reps.

   - **Dumbbell Incline Bench Press**:
     - Set up the bench in an incline position (at about a 45-degree angle).
     - Lie on the bench with dumbbells in each hand.
     - Raise the dumbbells over your chest, arms slightly bent.
     - Slowly lower the dumbbells to your chest and then raise them back up.
     - Perform 3 supersets of 10-12 reps.""",
      """3. **Hyperextensions**:
   - Get into a position on a hyperextension machine with your feet locked.
   - Bend your body forward at the pelvic joint and then rise back up to a horizontal position.
   - Perform 3 sets of 12 to 15 repetitions.""",
    ],
  ),
  Workout(
    id: 3,
    name: 'Functional Training',
    image: '$workouts/image4.png',
    bigImage: '$workouts/big_image4.png',
    description:
        """Remember that it is important to monitor your exercise technique and avoid overexertion. Warm up and warm up the relevant muscle groups before starting the exercise.""",
    steps: [
      """1. **Dumbbell Pullover**:
   - Lie on a bench so that your upper back is on it.
   - Take one dumbbell and raise it overhead, arms slightly bent.
   - Slowly lower the dumbbell behind your head, stretching your pectoral and back muscles, and then raise it back up.
   - Perform 4 sets of 10-12 reps.""",
      """2. **Pull-ups (reverse palms grip)**:
   - Hanging from a bar or bar, grasp with a wide reverse grip (palms facing you).
   - Pull yourself up, trying to bring your chest close to the bar.
   - Then slowly lower yourself back down.
   - Perform 4 sets of the maximum number of repetitions.""",
      """3. **Dumbbell bench press**:
   - Set up the bench in an incline position (at about a 30-45 degree angle).
   - Lie on the bench with dumbbells in each hand.
   - Raise the dumbbells above your chest, arms slightly bent.
   - Slowly lower the dumbbells to your chest and then raise them back up.
   - Perform 4 sets of 8-10 repetitions.""",
      """4. **Barbell Abdominal Pull**:
   - Sit in front of the machine with the bottom handle and grasp it.
   - Perform a barbell abdominal pull by bending your elbows and squeezing your back.
   - Smoothly return to the starting position.
   - Perform 3 sets of 8-10 reps.""",
      """5. **Hyperextensions**:
   - Get into a position on a hyperextension machine with your feet locked out.
   - Bend your body forward at the pelvic joint and then rise back up to a horizontal position.
   - Perform 3 sets of 12 to 15 repetitions.""",
    ],
  ),
  Workout(
    id: 4,
    name: 'Metabolic Workout',
    image: '$workouts/image5.png',
    bigImage: '$workouts/big_image5.png',
    description:
        """It is important to perform the exercises with good form and a focus on increasing the tempo to keep the intensity of the workout high. This metabolic workout will help you improve your endurance and boost your overall metabolic effect.""",
    steps: [
      """This workout incorporates a higher exercise tempo and lower weights to increase cardio and metabolic benefits.

1. **Bars (chest and back)**:
   - Stand in front of the bars and grasp their handles, arms slightly bent.
   - Rise up, pushing your body up, and then slowly lower yourself down.
   - Perform 4 sets of the maximum number of repetitions.""",
      """2. **Dumbbell bench press**:
   - Lie on a bench with dumbbells in each hand, palms facing forward.
   - Raise the dumbbells over your chest, arms extended.
   - Slowly lower the dumbbells to your chest, then raise them back up.
   - Perform 4 sets of 12-15 repetitions.""",
      """3. **Vertical Block Pull**:
   - Sit at a vertical block machine and grasp the handles.
   - Bend at the lower back and then slowly bend forward, stretching your upper back.
   - Return to the starting position by bending your back in the opposite direction.
   - Perform 4 sets of 12-15 repetitions.""",
      """4. **Hyperextensions**:
   - Get into a position on a hyperextension machine with your feet locked out.
   - Bend your body forward at the pelvic joint and then rise back up to a horizontal position.
   - Perform 3 sets of 15-20 repetitions.""",
      """5. **Plank**:
   - Get into a plank position, resting on your forearms and toes.
   - Hold the position while tensing your cortex and back muscles.
   - Perform 3 sets, holding each plank for 30-60 seconds.""",
    ],
  ),
];
