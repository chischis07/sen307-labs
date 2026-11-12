**Lab 4 Notes**



1. **What error did you get in Part 4?**  

I got the error below:


Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`sen307\_14752`.`student`, CONSTRAINT `student\_ibfk\_1` FOREIGN KEY (`dept\_id`) REFERENCES `department` (`dept\_id`))



1. **Why does MySQL refuse?** 

MySQL refused to execute the delete command because the target department had a student assigned to it.



**3. How did you fix it, and what other fix could you have used?**

I fixed it by assigning the student to another department first (thereby making the Library department empty), then I deleted the Library department. It succeeded this time because there was no record attached to it.

