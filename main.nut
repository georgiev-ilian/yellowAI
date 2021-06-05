class YellowAI extends AIController 
{
    function Start();
}

function YellowAI::Start()
{
    while (true) {
        AILog.Info("I am a very new AI with a ticker called Yellow and I am at tick " + this.GetTick() + " Hello");
        this.Sleep(50);
    }
}