#Question 1
select count(id) from survey_responders;

#Question 2
select * from survey_responders;

#Question 3
select count(id) from survey_questions;

#Question 4
select question from survey_questions;

#Question 5
select count(id) from survey_responders where province = 'Alberta';

#Question 6
select count(id) from survey_responses where survey_question_id = 4;

#Question 7
select avg(survey_response) from survey_responses;

#Question 8
select survey_question_id, avg(survey_response) from survey_responses group by survey_question_id;

#Question 9
select survey_responders.first_name, survey_responders.last_name from survey_responders 
join survey_responses on survey_responder_id = survey_responders.id
where survey_responses.survey_question_id = 1;

#Question 10
select avg(survey_responses.survey_response), survey_responders.province
from survey_responders 
join survey_responses on survey_responder_id = survey_responders.id
join survey_questions on survey_responses.survey_question_id = survey_questions.id
where survey_responders.province = 'Ontario';

#Question 11
select survey_responders.province, survey_questions.question, avg(survey_responses.survey_response)
from survey_responders 
join survey_responses on survey_responder_id = survey_responders.id
join survey_questions on survey_responses.survey_question_id = survey_questions.id
where survey_responders.province = 'Ontario'
group by survey_questions.question;

#Question 12
select survey_responders.province, survey_questions.question, avg(survey_responses.survey_response)
from survey_responders 
join survey_responses on survey_responder_id = survey_responders.id
join survey_questions on survey_responses.survey_question_id = survey_questions.id
group by survey_responders.province, survey_questions.question;