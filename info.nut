
class YellowAIInfo extends AIInfo {
    function GetAuthor()      
    { 
      return "Iliyan Georgiev"; 
    }

    function GetName()        
    { 
        return "yellowAI"; 
    }

    function GetDescription() 
    { 
        return "Simple AI for OpenTTD"; 
    }

    function GetVersion()     
    { 
        return 1; 
    }

    function GetDate()        
    { 
        return "2021-06-05"; 
    }

    function CreateInstance() 
    { 
        return "YellowAI"; 
    }

    function GetShortName()   
    { 
        return "YLOW"; 
    }

    function GetAPIVersion()  
    { 
        return "1.11"; 
    }
}

RegisterAI(YellowAIInfo());