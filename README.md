# Kentucky School System                       

Main review: [Review/final_ky_school_system_2023_2025.ipynb](https://github.com/HelloMeganHere/ky_school_systems/blob/main/Review/final_ky_school_system_2023_2025.ipynb)

## Project Goal
Investigate Kentucky public school education data to explore the relationship between student enrollment, chronic absenteeism, and dropout rate.

The datasets will be cleaned, transformed, stored to SQL and queried, and visualized using Python.

## Tools & Technologies

- Python
- Pandas
- Matplotlib
- Seaborn
- SQLite
- SQL
- Jupyter Notebook
- VS Code

### Datasets Used: 
- Kentucky Student Enrollment
- Kentucky Chronic Absenteeism 
- Kentucky Dropout Rate
- Kentucky County for state regions

The school datasets are mostly clean with several commonalities between the datasets, as they are all from the same source.   
Each school dataset includes:
School Year, County Number, County Name, District Number, District Name, School Number, School Name, School Code, State School Id, NCES ID, CO-OP, CO-OP Code, School Type, and Demographic

After these headers, is where the data varies depending on what I'm looking at. Enrollment data has additional columns for enrollment, Absenteeism for Absenteeism and Dropout rate for Dropout rate.

## Key Findings across all three school datasets:
School year represents two halves of a year starting around August (mid-summer) and ending in May (mid-spring)

County Name only has one county number, but each county can have more than one District number in it.

The district numbers are not limited to one school

School Number can represent more than one school

Each school has several lines and these are broken up into grade, with subgroups by demographic. 

Each School has a unique school ID

Grade levels range from Preschool through Grade 14, with Grade 14 reserved for qualifying special education students as defined by Kentucky Department of Education (KDE). See note below for additional context
-    For the grades not listed, there are asterisk (*). I believe these would represent NaNs
-    Per education.ky.gov:
-       Grade 14 “may only be selected for Special Education students participating in Alternate
        Assessment, as determined by the student’s Admissions and Release Committee (ARC)
        and documented on their Individual Education Program (IEP).” 
        each School has a unique school ID

NCES stands for the National Center for Education Statistics. It is the main federal group that gathers, studies, and shares data about education in schools and colleges.

Other:
    School Numbers are not unique to school name or even county (like school ID 105). Sometimes they are and sometimes they are not (like school ID 164 and 590).


### Demographics
Demographics has 18 categories: All Students, male/female, ethnicity, and other classification categories

![Demographic Groups](docs/student_demographic.png)

#### Observations
- Sex categories total 100%
- Race/Ethnicity totals 100%
- Special Population Categories are above 100%

## Key Findings for both Chronic Absenteeism and Dropout Rates:
Both datasets have suppressed columns with Yes or No values and values in the absenteeism total and dropout rate percent that are represented by an asterisk (*). These values are intentionally Suppressed per mandate by the government to protect the identity of students.

## Student Enrollment
Beyond the key findings above, this is where the enrollment data lives. There are "All Grades" per school with columns for Preschool through Grade 14 (with Grade 13 excluded)


#### Candidate Keys To Be Validated:
- School Year
- School Code
- Demographic

## Absenteeism
Outside of the main columns listed above, there are four column listed:
-    Suppressed
-    Chronically Absent Students
-    Students Enrolled 10 or More Days
-    Chronic Absenteeism Rate


#### Candidate Keys To Be Validated:
- School Year
- School Code
- Grade
- Demographic

## Drop Out Rate
Outside of the main columns listed above, there are two column listed:
-    Suppressed
-    Dropout Rate

#### Candidate Keys To Be Validated:
- School Year
- School Code
- Demographic

## Key findings
Jefferson county had the highest student enrollment in the state of Kentucky at 110,061. Fayette had the second highest at 46,677. Jefferson county had more than double the student enrollment than Fayette County.

For the past two years, there have been more males enrolled than females in the school systems.

Knott County had the  highest Chronic Absenteeism and highest dropout rate in the Kentucky Public School system in 2024 - 2025.

Although Jefferson County has a higher student enrollment population and higher number of students who dropout, it is still ranked second for the highest dropout rate.

For school year 2024-2025, although Jefferson County has the highest enrollment, they do not rank in the top 20 for highest chronic absenteeism, but they do rank second for highest dropout rate.

Knott county is does not rank in the top 20 highest enrollment rank, but has both the highest chronic absenteeism rate and highest dropout rate in the state of Kentucky. The chart above shows the highest dropout rate with enrollment listed.

The overall average Dropout rate reduced between school year 2023-2024 to 2024-2025

The overall average Chronic Absenteeism rate reduced between school year 2023-2024 to 2024-2025

### Primary Answer:
There is moderate correlation between chronic absenteeism rates and dropout rates in both school years. The relationship was stronger in 2023–2024 with a rate of 39.4% than in 2024–2025  30.4%, suggesting that schools with higher chronic absenteeism generally also experienced higher dropout rates.

## What I've learned!
It's important to keep my Markdown language area organized and clean. It can be easy for me to get lost in the lack of organization with these notebooks.

## Known issues
Just because counts may be higher for one group over another doesn't necessarily mean this is an accurate depiction of what the data is telling us. Some counties will have higher enrollment data than others. Jefferson County is a great example of this. It's a heavily populated county and this can make it appear that it has higher % of absenteeism than other counties.

## AI Assistance
ChatGPT was used as a learning and troubleshooting resource throughout the project, including concept clarification, technical guidance, and feedback. All analysis, project decisions, testing, and validation were completed by the author.

## Citation:
2023-2024 & 2024-2025:
- https://reportcard.kyschools.us/data-download?pid=c340f7d5-efbd-5fb8-cab8-3a128835f84c

KY flag color scheme used for charts:
- https://www.flagcolorcodes.com/kentucky

National Center for Education Statistics:
- https://nces.ed.gov/

Grade 14:
- https://www.education.ky.gov/specialed/excep/GuidanceResources/Documents/Questions_%20and_Answers_Related_to_Grade_14_Students.pdf

Data Suppression:
- https://www.education.ky.gov/school/csip/Documents/Suppressed%20Data%20Guidance.pdf
- https://www.education.ky.gov/AA/distsupp/Documents/Understanding_Kentucky_Minimum_N_School_Accountability.pdf

