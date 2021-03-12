import smtplib
import os 
import sys 

g="\033[1;35m"
w="\033[0m"
c="\033[2m"
ccc="\033[1;34m"
print(ccc+"Sent mail to "+g+c+sys.argv[2]+w)

email= sys.argv[4]
passw= sys.argv[5]


para = sys.argv[2]
asunto = sys.argv[1]
msg = sys.argv[3]


message = msg
subject = asunto

message = 'Subject: {}\n\n{}'.format(subject, message)

server = smtplib.SMTP('smtp.gmail.com', 587)
server.starttls()
server.login(email, passw)

server.sendmail(email, para, message)
server.quit()

