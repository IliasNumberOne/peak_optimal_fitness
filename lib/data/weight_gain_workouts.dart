
import 'package:peak_optimal/models/models.dart';

const workouts = 'assets/images/workouts';

final List<Workout> weightGainWorkouts = [
  Workout(
    id: 35,
    name: 'Full-Body Strength Training',
    image: '$workouts/image36.png',
    bigImage: '$workouts/big_image36.png',
    description:
    """Full body strength training is a great way to increase overall muscle mass and strengthen your body. Do it regularly, including it in your workout program and maintaining proper nutrition to achieve your weight gain goals.""",
    steps: [
      """*Purpose:* Increase overall muscle mass and strength.""",
      """*Description:* **1. Warm-up:** Start your workout with a short warm-up of 5-10 minutes to prepare your muscles for physical activity. You can do the following exercises: - Jumping in place - March on the spot - Circular movements with arms and legs""",
      """**2. Full body exercises:** - Your goal is to activate and develop all major muscle groups: legs, back, chest, shoulders, arms. - Examples of exercises: **Squats with dumbbells:** - Stand straight, holding dumbbells in your hands at shoulder level. - Do a squat as if sitting on a chair, lowering your hips below your knees. - Rise back to the starting position. - Perform 3-4 sets of 8-12 repetitions. **Push ups:** - Perform push-ups to develop your chest, shoulder and arm muscles. - Try to perform 3-4 sets of 8-12 repetitions. **Pull-ups on a horizontal bar:** - Use a horizontal bar or special equipment. - Perform 3-4 sets of 8-12 repetitions.""",
      """**3. Finish (Cool-down):** After completing exercises, perform a cool-down to gradually reduce the intensity of your workout. Walk in place and do stretches for different muscle groups.""",
      """**Adviсe:** - Use moderately heavy dumbbells or a barbell depending on your physical fitness. - Pay attention to the correct exercise technique to avoid injury. - Gradually increase the load over time by increasing the number of repetitions or dumbbell weights. - Train 2-3 times a week, giving your muscles time to recover between workouts.""",
    ],
    premium: true
  ),
  Workout(
    id: 36,
    name: 'Upper-Body Strength Training',
    image: '$workouts/image37.png',
    bigImage: '$workouts/big_image37.png',
    description:
    """Upper body strength training will help you develop your chest and shoulder muscles, strengthen your back, and achieve better results in gaining muscle mass in your upper body. Exercise regularly and eat right to achieve your goals.""",
    steps: [
      """*Purpose:* Improve the development of the upper body and increase the volume of the pectoral and shoulder muscles.""",
      """*Description:* **1. Warm-up:** Start your workout with a short warm-up of 5-10 minutes to prepare your muscles for physical activity. You can do the following exercises: - Walking in place - Easy jumping in place - Upper body stretching""",
      """**2. Upper body exercises:** - This workout will include exercises aimed at developing the pectoral, shoulder, and upper back muscles. Here are some examples: **Barbell or dumbbell bench press:** - Lie down on the bench face up. - Grab a barbell or dumbbells, holding them above your chest. - Lower yourself slowly, bending your elbows, and then rise back up. - Perform 3-4 sets of 8-12 repetitions. **Dumbbell swings:** - Standing upright, take dumbbells in your hands. - Raise the dumbbells in front of you to eye level, then slowly lower. - Perform 3-4 sets of 10-15 repetitions. **Pull-ups:** - Use a horizontal bar or special equipment. - Perform 3-4 sets of as many reps as your strength allows.""",
      """**3. Finish (Cool-down):** After completing exercises, perform a cool-down to gradually reduce the intensity of your workout. Walk in place and do some upper body stretches.""",
      """**Adviсe:** - Use dumbbells or a barbell that is comfortable and suitable for you in weight. - Maintain proper exercise technique to avoid injury. - Gradually increase the weight or intensity of your workout as your fitness improves. - Constantly increase the load to stimulate muscle growth.""",
    ],
    premium: true,
  ),
  Workout(
    id: 37,
    name: 'Lower-Body Strength Training',
    image: '$workouts/image38.png',
    bigImage: '$workouts/big_image38.png',
    description:
    """Lower body strength training will help you develop, bulk, and strengthen your thighs, buttocks, and legs. Doing this workout regularly, combined with proper nutrition, will help you gain muscle mass in your lower body.""",
    steps: [
      """*Purpose:* Increase size and strength of the lower body, including hips, buttocks and legs. """,
      """*Description:* **1. Warm-up:** Start your workout with a short warm-up of 5-10 minutes to prepare your muscles for physical activity. You can do the following exercises: - Walking in place - Easy jumping in place - Lower body stretching""",
      """**2. Lower body exercises:** - Your goal is to activate and develop your hips, glutes, and legs. Here are some examples of exercises: **Squats:** - Stand straight, holding a barbell on your shoulders. - Do a squat, lowering your hips below your knees. -Then climb back up. - Perform 3-4 sets of 8-12 repetitions. **Leg swing:** - Lie on your side, supporting your upper body on your forearms. - Lift your top leg up, then lower it. - Perform 3-4 sets of 12-15 repetitions on each leg. **Bent-over barbell or dumbbell row:** - Standing in front of a barbell or holding dumbbells, lean forward at the pelvis, keeping your back straight. - Raise the weight to your stomach, then lower it. - Perform 3-4 sets of 8-12 repetitions.""",
      """**3. Finish (Cool-down):** After completing exercises, perform a cool-down to gradually reduce the intensity of your workout. Walk in place and stretch your lower body.""",
      """**Adviсe:** - Use weights that suit your physical fitness but still provide a feeling of resistance. - Pay attention to the correct exercise technique to avoid injury. - Gradually increase the weight or intensity of your workout to stimulate muscle growth.""",
    ],
    premium: true,
  ),
  Workout(
    id: 38,
    name: 'Hypertrophy and Endurance',
    image: '$workouts/image39.png',
    bigImage: '$workouts/big_image39.png',
    description:
    """Training that combines hypertrophy and endurance will help you develop muscles, increase their size and endurance. Perform this workout regularly in combination with proper nutrition to achieve your muscle and endurance goals.""",
    steps: [
      """*Purpose:* Increase muscle mass and muscle endurance""",
      """*Description:* **1. Warm-up:** Start your workout with a short warm-up of 5-10 minutes to prepare your muscles for physical activity. You can do the following exercises: - Walking in place - Easy jumping in place - Stretching for all muscle groups""",
      """**2. Hypertrophy:** - Your goal is to increase muscle size. To do this, use medium weights and high repetitions (12-15 or more). - Perform exercises for all muscle groups, including the chest, back, legs, shoulders and arms. - Examples of exercises: dumbbell press, dumbbell swings, squats, pull-ups on a horizontal bar and others.""",
      """**3. Endurance:** - Add exercises to your workout aimed at developing muscle endurance. Use light weights and perform more repetitions (15-20 or more). - These can be exercises for muscle groups with high mass turnover, such as push-ups, pull-ups, leg swings, etc.""",
      """**4. Supersets and trisets:** - To increase the intensity of your workout, use supersets (two exercises performed in a row without a pause) and trisets (three exercises performed in a row without a pause). - For example, you can do a superset of dumbbell presses and dumbbell chest swings to increase the load on this muscle group.""",
      """**5. Cool-down:** At the end of your workout, cool down to gradually reduce the intensity of your workout. Walk in place, stretch all muscle groups.""",
      """**Adviсe:** - Maintain proper exercise technique to avoid injury. - Gradually increase the load by increasing the number of repetitions or dumbbell weights. - Train 3-4 times a week, giving your muscles enough time to recover.""",
    ],
    premium: true
  ),
  Workout(
    id: 39,
    name: 'Back Strength Training',
    image: '$workouts/image40.png',
    bigImage: '$workouts/big_image40.png',
    description:
    """Strength training for the back will help you strengthen the muscles in this area, improve your posture and achieve a more balanced physical development. Exercise regularly, combined with proper nutrition, to achieve your back development goals.""",
    steps: [
      """*Purpose:* Strengthen and develop back muscles.""",
      """*Description:* **1. Warm-up:** Start your workout with a short warm-up of 5-10 minutes to prepare your muscles for physical activity. You can do the following exercises: - Walking in place - Easy jumping in place - Stretching for the back and shoulders""",
      """**2. Back exercises:** - Your goal is to activate and develop the muscles of your upper, middle and lower back. Here are some examples of exercises: **Pull-ups on a horizontal bar:** - Use a horizontal bar or special equipment. - Perform 3-4 sets of as many reps as your strength allows. **Upper pull:** - While sitting on the lat pull-down machine, take the handles in your hands. - Pull the arms toward your chest, squeezing your shoulder blades. - Perform 3-4 sets of 8-12 repetitions. **Dumbbell swings for the back:** - Standing upright, take dumbbells in your hands. - Bend slightly at the waist and lean forward at the pelvis. - Raise the dumbbells up to your waist, squeezing your shoulder blades. - Perform 3-4 sets of 10-12 repetitions.""",
      """**3. Finish (Cool-down):** After completing exercises, perform a cool-down to gradually reduce the intensity of your workout. Walk in place and stretch your back and shoulders.""",
      """**Adviсe:** - Use weights that suit your physical fitness to maintain proper technique. - Maintain correct back position and avoid overexertion when performing exercises. - Gradually increase the load to strengthen and develop your back muscles.""",
    ],
  ),
];
