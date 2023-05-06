[referhere](https://www.acte.in/terraform-interview-questions-and-answers/)

## 1.Tell us about yourself?


## 2.Where is Terraform Used in DevOps?
A: Below are the reasons for choosing Terraform for DevOps:
It can do complete orchestration and not just configuration management (like Ansible and Puppet).
Has amazing support of almost all the popular cloud providers like AWS, Azure, GCP, DigitalOcean etc.
Easily manages the configuration of an immutable (dynamic) infrastructure.
Provide immutable infrastructure where configuration changes smoothly.
Works on HCL (HashiCorp configuration language), which is very easy to learn and understand.
Easily portable from one provider to another.
Easy Installation.


## 3.What is IAC
IaC is a short form of Infrastructure as code.
Infrastructure as Code is a way of defining and managing infrastructures using code.
rather then Using UI or command line



## 4.What is module in terraform
Answer: A module in Terraform is a container for multiple resources that are used in tandem.
Every Terraform that includes resources mentioned in.tf files requires the root module.



## 5.What steps should be followed for making an object of one module to be available for the other module at a high level?
First, in a resource configuration, an output variable must be defined.
The scope of local and to a module is not declared until you declare resource configuration details.
You must now declare the output variable of module A so that it can be used in the configurations of other modules
You should create a brand new and current key name, and the value should be kept equal to the module A output variable
You must now create a file variable.tf for module B. Create an input variable inside this file with the same name as the key you defined in module B.
This variable in a module enables the resource’s dynamic configuration. Rep the process to make this variable available to another module as well.
This is due to the fact that the variable established here has a scope limited to module B



## 6.What is State File Locking?
State file locking is a Terraform mechanism that prevents operations on a specific state file from being performed by multiple users at the same time.State file locking is a Terraform mechanism in which operations on a specific state file are blocked to avoid conflicts between multiple users performing the same process. When one user releases the lock, then only the other one can operate on that state. This helps in preventing state file corruption. This is a backend operation
Once the lock from one user is released, any other user who has taken a lock on that state file can operate on it.


## 7.What is a Remote Backend in Terraform?
Terraform remote backend is used to store Terraform’s state and can also run operations in Terraform Cloud.


## 8.What is a Tainted Resource?
Tainted resources are those that must be destroyed and recreated upon the next apply command.
Nothing changes on infrastructure when you mark a resource as tainted, but the state file is updated with this information (destroy and create).
After marking a resource as tainted, Terraform plan out will show that the resource will be destroyed and recreated,
and the changes will be implemented when the next apply occurs.

## 9.Does Terraform support multi-provider deployments?
Terraform is a powerful tool in multi-provider deployments because it is not tied to a specific infrastructure or cloud provider.
You can manage all resources with the same set of configuration files, sharing variables and defining dependencies across providers.


## 10.Define Resource Graph in Terraform?
A resource graph is a graphical representation of the available resources.
It enables the modification and creation of independent resources at the same time.
Terraform creates a plan for the graph’s configuration in order to generate plans and refresh the state.
It efficiently and effectively creates structure to help us understand the disadvantages


## 11.How can you define dependencies in Terraform?
you can use depends_on to declare the dependency explicitly.
You can also specify multiple resources in the depends on argument,
and Terraform will create the target resource after all of them have been created.


## 12.What happens when multiple engineers start deploying infrastructure using the same state file?
Terraform has a critical feature known as “state locking.”
This feature ensures that no changes to the state file are made during a run, preventing the state file from becoming corrupt.
It is important to note that the state locking feature is not supported by all Terraform Backends.
If this feature is required, you should select the appropriate backend.


## 13.Which value of the TF_LOG variable provides the MOST verbose logging?
TRACE is the most verbose option, and it is the default if TF_LOG is not set to a log level name.
When logging is enabled, you can set TF_LOG_PATH to force the log to always be appended to a specific file.



## 14.Which command can be used to preview the terraform execution plan?
The terraform plan command generates an execution plan, which allows you to preview the changes that Terraform intends to make to your infrastructure. When Terraform generates a plan by default, it:
Reads the current state of any existing remote objects to ensure the Terraform state is current.
The current configuration is compared to the previous state, and any differences are noted.
Proposes a set of change actions that, if executed, should cause the remote objects to match the configuration.


## 15.What is the benefit of Terraform State? What is the benefit of using modules in terraform?
Terraform state is primarily used to store bindings between remote system items and resource instances specified in your configuration.
When Terraform generates a remote object in response to a configuration change,
it saves the remote object’s identification to a specific resource instance and
may update or remove that object in response to future configuration changes.
Terraform modules are comparable to functions in programming languages. Using modules you'll have a standard interface for creating resources by providing inputs and returning outputs. These modules will help you to organize configuration, encapsulate configuration, re-use configuration, provide consistency and ensure best practices.


## 16.Define null resource in Terraform?
The null resource follows the standard resource lifecycle but takes no additional actions.
The trigger argument allows for the specification of a subjective set of values that, if misrepresented, will cause the reserve to be replaced.
