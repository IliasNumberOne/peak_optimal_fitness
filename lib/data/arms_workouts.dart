import 'package:peak_optimal/data/chest_back_workouts.dart';
import 'package:peak_optimal/models/models.dart';

final List<Workout> armsWorkouts = [
  Workout(
    id: 10,
    name: 'Strength Training for Biceps and Triceps',
    image: '$workouts/image11.png',
    bigImage: '$workouts/big_image11.png',
    description:
        "This workout is designed to develop both biceps and triceps. The exercises are chosen to provide a comprehensive training effect on the upper extremity area. Try to follow proper exercise technique and increase the load as your strength increases to achieve the best results.",
    steps: [
      """**Biceps:**

1. **Dumbbell biceps curls**:
   - Sit on a bench with back support, dumbbells in each hand.
   - Arms should be fully straightened at the bottom.
   - Raise the dumbbells to your shoulders, bending your elbows.
   - Then slowly lower the dumbbells back down.
   - Perform 4 sets of 8-10 repetitions.""",
      """2. **Dumbbell Hammer Bend**:
   - Grasp the dumbbells in your hands with a neutral grip (palms facing each other).
   - Bend your elbows while lifting the dumbbells toward your shoulders.
   - Then slowly lower the dumbbells.
   - Perform 4 sets of 10-12 repetitions.""",
      """*Triceps:*

3. **Triceps push-ups on the floor**:
   - Lie on the floor, hands shoulder-width apart, palms resting on the floor.
   - Push up from the floor by bending your elbows.
   - Then return to the starting position.
   - Perform 4 sets of 10-12 repetitions.""",
      """4. **Triceps Dips**:
   - Use parallel bars or a specialized stand-up tourniquet.
   - Lower yourself by bending your elbows until they are bent at 90 degrees and then rise back up.
   - Perform 4 sets of 8-10 repetitions.""",
    ],
  ),
  Workout(
    id: 11,
    name: 'Biceps and Triceps Shape and Volume Workout',
    image: '$workouts/image12.png',
    bigImage: '$workouts/big_image12.png',
    description: "This workout is designed to create balance between the biceps and triceps, giving them shape and volume. Remember the importance of proper exercise technique and gradually increase the weight to hold progress and stimulate muscle growth.",
    steps: [
      """**Biceps:**

1. **Sitting dumbbell curls**:
   - Sit on a bench with back support, dumbbells in each hand.
   - Bend your elbows as you raise the dumbbells to your shoulders.
   - Then slowly lower the dumbbells.
   - Perform 4 sets of 10-12 repetitions.""",
      """2. **Strict Grip Horizontal Bar Pull-ups**:
   - Hang from a horizontal bar with a narrow grip (palms inward).
   - Bend your elbows and reach upward, trying to pull your chest toward the bar.
   - Then slowly lower yourself down.
   - Perform 4 sets of 8-10 repetitions.""",
      """*Triceps: *.

3. **French dumbbell press**:
   - Lie on a bench or sit with your back straight on a bench.
   - Take a dumbbell in one hand and raise it above your head.
   - Bend your elbow as you lower the dumbbell behind your head and then raise it back up.
   - Perform 4 sets of 8-10 reps on each arm.""",
      """4. **Triceps push-ups on the bars**:
   - Use parallel bars or a specialized stand-up bar.
   - Lower yourself by bending your elbows until they are bent at 90 degrees, then rise back up.
   - Perform 4 sets of 10-12 repetitions.""",
    ],
  ),
  Workout(
    id: 12,
    name: 'Functional training for biceps and triceps',
    image: '$workouts/image13.png',
    bigImage: '$workouts/big_image13.png',
    description: "Functional training for biceps and triceps",
    steps: [
      """*Biceps:*

1. **Dumbbell hammer curl**:
    - Hold the dumbbells in your hands with a neutral grip (palms facing each other).
    - Bend your elbows as you lift the dumbbells toward your shoulders.
    -Then slowly lower the dumbbells.
    - Perform 4 series of 10-12 repetitions.""",
      """2. **Dumbbell Hammer Raises**:
    - Hold the dumbbells in your hands with a neutral grip (palms facing each other).
    - Raise the dumbbells to your shoulders, bending your elbows.
    -Then slowly lower the dumbbells.
    - Perform 4 series of 10-12 repetitions.""",
      """*Triceps:*

3. **Triceps push-ups**:
    - Lie down on the floor, arms shoulder-width apart, palms resting on the floor.
    - Push up from the floor, bending your elbows.
    - Then return to the starting position.
    - Perform 4 series of 10-12 repetitions.""",
      """4. **Triceps Dips**:
    - Use parallel bars or a specialized horizontal bar stand.
    - Lower yourself by bending your elbows until they are bent at 90 degrees, and then rise back up.
    - Perform 4 series of 8-10 repetitions.""",
      """5. **Pull-ups on a horizontal bar with a reverse grip**:
    - Hang on a horizontal bar with a reverse grip (palms facing in).
    - Bend your elbows and lift yourself up, trying to pull your chest towards the bar.
    -Then slowly lower yourself.
    - Perform 4 series of 8-10 repetitions.""",
    ],
  ),
  Workout(
    id: 13,
    name: 'Superset Workout for Biceps and Triceps',
    image: '$workouts/image14.png',
    bigImage: '$workouts/big_image14.png',
    description: "This superset workout puts maximum stress on your biceps and triceps, helping them grow and develop. Try to follow proper exercise technique and choose a weight that allows you to perform the exercises with proper form.",
    steps: [
      """*Superset 1: Biceps*

1. **Dumbbell Biceps Curl**:
    - Sit on a bench with back support, dumbbells in each hand.
    - Arms should be completely straight at the bottom.
    - Raise the dumbbells to your shoulders, bending your elbows.
    -Then slowly lower the dumbbells back down.
    - Perform 3 supersets of 10-12 reps.""",
      """2. **Dumbbell hammer curl**:
    - Hold the dumbbells in your hands with a neutral grip (palms facing each other).
    - Bend your elbows as you lift the dumbbells toward your shoulders.
    -Then slowly lower the dumbbells.
    - Perform 3 supersets of 10-12 reps.""",
      """*Superset 2: Triceps*

3. **French press with dumbbell**:
    - Lie down on a bench or sit with your back straight on a bench.
    - Take a dumbbell in one hand and lift it above your head.
    - Bend your elbow, lowering the dumbbell behind your head, and then lift it back up.
    - Perform 3 supersets of 8-10 reps on each arm.""",
      """4. **Triceps dips**:
    - Use parallel bars or a specialized horizontal bar stand.
    - Lower yourself by bending your elbows until they are bent at 90 degrees, and then rise back up.
    - Perform 3 supersets of 8-10 reps.""",
      """*Superset 3: Final superset for biceps and triceps*

5. **Close grip dumbbell biceps curl**:
    - Sit on a bench with back support, dumbbells in each hand.
    - Bend your elbows, lifting the dumbbells toward your shoulders with a close grip (palms facing in).
    -Then slowly lower the dumbbells.
    - Perform 3 supersets of 10-12 reps.""",
      """6. **Close grip triceps push-ups**:
    - Lie on the floor, arms shoulder-width apart, palms resting on the floor, with a narrow grip.
    - Push up from the floor, bending your elbows.
    - Then return to the starting position.
    - Perform 3 supersets of 10-12 reps.""",
    ],
  ),
  Workout(
    id: 14,
    name: 'Strength and Functional Training for Biceps and Triceps',
    image: '$workouts/image15.png',
    bigImage: '$workouts/big_image15.png',
    description: "This workout combines strength and functional exercises for the biceps and triceps, helping to develop both strength and functional endurance in the upper extremities. Pay attention to proper exercise technique and try to increase the load as your fitness improves.",
    steps: [
      """*Biceps:*

1. **Barbell curl**:
    - Stand straight, feet shoulder-width apart.
    - Raise the barbell towards your shoulders, bending your elbows.
    -Then slowly lower the barbell.
    - Perform 4 series of 6-8 repetitions.""",
      """2. **Standing Dumbbell Curl**:
    - Stand straight, dumbbells in each hand.
    - Bend your elbows as you lift the dumbbells toward your shoulders.
    -Then slowly lower the dumbbells.
    - Perform 4 series of 8-10 repetitions.""",
      """*Triceps:*

3. **Triceps push-ups**:
    - Lie down on the floor, arms shoulder-width apart, palms resting on the floor.
    - Push up from the floor, bending your elbows.
    - Then return to the starting position.
    - Perform 4 series of 8-10 repetitions.""",
      """4. **Close grip triceps push-ups**:
    - Lie down on a bench or floor, hands with a narrow grip (palms facing each other).
    - Push up, bending your elbows, and return to the starting position.
    - Perform 4 series of 10-12 repetitions.""",
      """5. **Triceps Dips**:
    - Use parallel bars or a specialized horizontal bar stand.
    - Lower yourself by bending your elbows until they are bent at 90 degrees, and then rise back up.
    - Perform 3 series of 10-12 repetitions.""",
      """6. **Pull-ups on a horizontal bar with a narrowed grip**:
    - Hang on a horizontal bar with a narrowed grip (palms facing in).
    - Bend your elbows and lift yourself up, trying to pull your chest towards the bar.
    -Then slowly lower yourself.
    - Perform 3 series for the maximum number of repetitions.""",
    ],
  ),
];
