class YellowAI extends AIController 
{
    function Start();
    function SetCompanyName();
    function FindHighestPolulation();
}

function YellowAI::Start()
{
    this.SetCompanyName();

    local topTown = this.FindHighestPolulation();

    AILog.Info("Town with highest population is " + AITown.GetName(topTown));
    AILog.Info("The location of " + AITown.GetName(topTown) + " is " + AITown.GetLocation(topTown));
    AILog.Info("The population is " + AITown.GetPopulation(topTown));

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

function YellowAI::FindHighestPolulation() 
{
    /* Get a list of all towns on the map. */
    local townlist = AITownList();

    /* Sort the list by population, highest population first. */
    townlist.Valuate(AITown.GetPopulation);
    townlist.Sort(AIList.SORT_BY_VALUE, false);

    return townlist.Begin();
}