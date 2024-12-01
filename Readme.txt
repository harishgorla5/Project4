dockerhub secret file : 
id : project4


#add permissions :
sudo usermod -aG docker jenkins
check jenkins user is now access : sudo -u jenkins docker ps

# Run the image as container , to validate or test 
docker run -d -p 9001:8080 --name project4-container harishgorla5/project4:latest

#git 
git add .
git commit -m "commit comment"
git push origin project4

