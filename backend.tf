terraform { 
  cloud { 
    
    organization = "DXC-BANK" 

    workspaces { 
      name = "dxc-bank-workspace" 
    } 
  } 
}