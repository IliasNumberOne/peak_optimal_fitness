import 'package:peak_optimal/models/models.dart';

const workouts = 'assets/images/workouts';

final List<Workout> chestBackWorkouts = [
  Workout(
    id: 0,
    name: 'Classic Strength Training',
    image: '$workouts/image1.png',
    bigImage: '$workouts/big_image1.png',
    description: """It is important to perform the exercises with proper technique, controlling the movements and avoiding overstretching. It is recommended to warm up and warm the muscles before starting the exercise.
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
];
