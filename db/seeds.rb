jenna = User.new(username: 'jenna', password_hash: 'abc123')
jenna.save
kristie = User.new(username: 'kristie', password_hash: 'kristie')
kristie.save
scott = User.new(username: 'scott', password_hash: 'fox')
scott.save
mira = User.new(username: 'mira', password_hash: 'frog')
mira.save


workout_survey = Survey.new(title: "Favorite Workout", description: "what's your favorite way to stay in shape", creator_id: mira.id)
workout_survey.save

q1 = Question.create(text: "What do you do to stay in shape?", survey_id: workout_survey.id)

c1 = Choice.create(text: "Swimming", question_id: q1.id)
c2 = Choice.create(text: "Running", question_id: q1.id)
c3 = Choice.create(text: "Boxing", question_id: q1.id)
c4 = Choice.create(text: "Rowing", question_id: q1.id)
c5 = Choice.create(text: "Weights", question_id: q1.id)
c6 = Choice.create(text: "Crossfit", question_id: q1.id)

dessert_survey = Survey.new(title: "Favorite Desserts", description: "what kind of dessert satisfies your sweet tooth", creator_id: jenna.id)
dessert_survey.save

q2 = Question.create(text: "What is your favorite dessert?", survey_id: dessert_survey.id)

c7 = Choice.create(text: "Icecream", question_id: q2.id)
c8 = Choice.create(text: "Cake", question_id: q2.id)
c9 = Choice.create(text: "Cookies", question_id: q2.id)
c10 = Choice.create(text: "Chocolate", question_id: q2.id)
c11 = Choice.create(text: "Pie", question_id: q2.id)
c12 = Choice.create(text: "Pastry", question_id: q2.id)

dbc_survey = Survey.new(title: "Favorite Things About DBC", description: "What do you love most about DBC", creator_id: kristie.id)
dbc_survey.save

q3 = Question.create(text: "What is your favorite thing about DBC?", survey_id: dbc_survey.id)

c13 = Choice.create(text: "EE", question_id: q3.id)
c14 = Choice.create(text: "Class", question_id: q3.id)
c15 = Choice.create(text: "Challenges", question_id: q3.id)
c16 = Choice.create(text: "Lunch", question_id: q3.id)
c17 = Choice.create(text: "After Hours", question_id: q3.id)
c18 = Choice.create(text: "Meeting", question_id: q3.id)

travel_survey = Survey.new(title: "Favorite Way to Travel", description: "What kind of holiday do you prefer?", creator_id: scott.id)
travel_survey.save


q4 = Question.create(text: "What is your favorite way to travel?", survey_id: travel_survey.id)

c19 = Choice.create(text: "Bike", question_id: q4.id)
c20 = Choice.create(text: "Train", question_id: q4.id)
c21 = Choice.create(text: "Car", question_id: q4.id)
c22 = Choice.create(text: "Plane", question_id: q4.id)
c23 = Choice.create(text: "Boat", question_id: q4.id)
c24 = Choice.create(text: "Bus", question_id: q4.id)
