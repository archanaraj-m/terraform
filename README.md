### Terraform
-----------------------
* First we can create a VM(Instance),in that install awscli
``` 
  sudo apt-get update
  sudo apt install awscli
  aws configure

```

* Next install terraform in that VM

```
sudo apt-get update
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

```

* we can create a folder with any name in that create files with this names 
    input.tf
    output.tf
    main.tf
    provider.tf

* main.tf in this file we can add ami id 
* amiID is any region it's same we can take always this amiid click on launch template 
* ![Preview](./images/tf1.png) 
* ![Preview](./images/tf2.png)

