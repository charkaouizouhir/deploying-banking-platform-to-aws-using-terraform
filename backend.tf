terraform { 
  cloud { 
    
    organization = "app-host" 

    workspaces { 
      name = "my-workspace" 
    } 
  } 
}