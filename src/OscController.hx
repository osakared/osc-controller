package;

import grig.controller.Controller;

class OscController implements Controller
{
    public function new()
    {

    }

    public function startup(host:grig.controller.Host)
    {
        var server = host.createOscServer(8000);
        var client = host.createOscClient('localhost', 9000);
        server.registerFloat32Callback((volume:Float) -> {
            var message = new grig.osc.Message('/track/0/volume');
            message.arguments.push(new grig.osc.argument.Float32Argument(volume));
            client.sendMessage(message);
        }, '/track/0/volume');
    }

    public function shutdown()
    {

    }
}