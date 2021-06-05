class YellowAI extends AIController 
{
    function Start();
    function SetCompanyName();
}

function YellowAI::Start()
{
    this.SetCompanyName();

    while (true) {
        AILog.Info("I am a very new AI with a ticker called Yellow and I am at tick " + this.GetTick());
        this.Sleep(50);
    }
}

function YellowAI::SetCompanyName() 
{
    if (!AICompany.SetName("Yellow Ltd.")) 
    {
        local i = 2;
        while (!AICompany.SetName("Yellow" + i " Ltd.")) 
        {
            i++;
        }
    }
}