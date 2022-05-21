#!/bin/bash
#To parse JSON via Bash, a tool called "jq" can be used.

#API key as a variable, created on QuizAPI.
API_KEY=MPfPqBVPzxMc37NoYQp6KmkSqmPdB41Twd2M53QF

#Curl command to get a JSON reply.
#curl "https://quizapi.io/api/v1/questions?apiKey=${API_KEY}&limit=10"

#Compare the output with addition to jq tool.
#curl "https://quizapi.io/api/v1/questions?apiKey=${API_KEY}&limit=10" | jq

#With this script we can take only the first one
#curl "https://quizapi.io/api/v1/questions?apiKey=${API_KEY}&limit=2" | jq '.[].question'

output=$(curl 'https://quizapi.io/api/v1/questions?apiKey=API_KEY&limit=2'2>./questions_json.txt)

#Selecting the first question.
output=$(echo $output | jq '.[0]')
#Selecting the question part.
question=$(echo $output | jq '.question')
#Answers
answer_a=$(echo $output | jq '.asnwers.answer_a')
answer_b=$(echo $output | jq '.asnwers.answer_b')
answer_c=$(echo $output | jq '.asnwers.answer_c')
answer_d=$(echo $output | jq '.asnwers.answer_d')

#Outputs
echo "
    Question: ${question}
    A) ${answer_a}
    B) ${answer_b}
    C) ${answer_c}
    D) ${answer_d}
"