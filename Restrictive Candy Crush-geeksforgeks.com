    string Reduced_String(int k,string s){ 
        int flag=0;
        while(flag!=1)
        { 
            int i,z,index=0; string neww; flag=1; 
            for(i=0;s[i]!='\0';i++)
            {
                for(z=i+1;z<k+i;z++) 
                if(s[z]!=s[i]) 
                break; 
                
                if(z-i==k)
                { 
                    neww.append(s,index,i-index); 
                    i=i+k-1; 
                    ind=i+1; 
                    flag=0; 
                    
                } 
                else 
                continue; 
                
            } 
            neww.append(s,index,i-index);
            s=neww; 
            
        } 
        return s;
        
    }
