                         
Student Enrollment
school year
County Name only has one county number, but each county can have more than one District number in it.
The district numbers are not limited to one school
School Number can represent more than one school
Each school has several lines and these are broken up into grade, with subgroups by demographic. 
Regardless of the grade, they all have PS though 14th grade
    For the grades not listed, there are *. I believe these would represent NaNs
each School has a unique school ID
Not sure what NCES ID represents..
Demographics has 18 categories, male/female, ethnicity, Military, and other categories
Grades are All Grades, PS though 14th Grade, but there are 16 columns for Preschool through Grade 14. Grade 13, looks to be skipped? Need to confirm this is accurate?
Each Grade has digits, blanks. No * listed like the Absenteeism dataset


Potential Primary Keys:
School Year
School Code
Demographic


Absenteeism
school year
County Name only has one county number, but each county can have more than one District number in it.
The district numbers are not limited to one school
School Number can represent more than one school
Each school has several lines and these are broken up into grade, with subgroups by demographic. 
Regardless of the grade, they all have PS though 14th grade
    For the grades not listed, there are *. I believe these would represent NaNs
each School has a unique school ID
Not sure what NCES ID represents..
Grades are All Grades, PS though 14th Grade
Demographics has 18 categories, male/female, ethnicity, Military, and other categories
Suppressed - I'm not sure what this means, ut this is Yes/No values

There are three column headers with these options listed:
    Chronically Absent Students (number) no blanks in the dataset
    Students Enrolled 10 or More Days	(number) blanks in the dataset
    Chronic Absenteeism Rate (float) blanks in the dataset
        Each of these columns are either number/float values with *. I would think these need to be replaced by NaNs

Potential Primary Keys:
School Year
School Code
Grade
Demographic

Drop Out Rate
school year
County Name only has one county number, but each county can have more than one District number in it.
The district numbers are not limited to one school
School Number can represent more than one school
Each school has several lines and these are broken up into grade, with subgroups by demographic. 
Regardless of the grade, they all have PS though 14th grade
    For the grades not listed, there are *. I believe these would represent NaNs
each School has a unique school ID
Not sure what NCES ID represents..
has 18 categories, male/female, ethnicity, Military, and other categories
Suppressed - I'm not sure what this means, ut this is Yes/No values
Dropout Rate - Decimals, assuming these are %. One school has 22.9 with a demographic of homeless, Assuming here 22.9% of students at this school end up dropping out. (heartbreaking...)

Callout: Grade is not lsited here**

Potential Primary Keys:
School Year
School Code
Grade
Demographic