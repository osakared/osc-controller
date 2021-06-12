package;

import grig.controller.standalone.Host;

/**
 * Entry point for dummy/simulated DAW. Maybe this should be incorporated into grig.controller somehow
 */
class Main
{
    static function main()
    {
        var controller = new OscController();
        var host = new Host();
        controller.startup(host);
        #if (sys && !nodejs)
        var stdout = Sys.stdout();
        var stdin = Sys.stdin();
        // Using Sys.getChar() unfortunately fucks up the output
        stdout.writeString('quit[enter] to quit\n');
        while (true) {
            var command = stdin.readLine();
            if (command.toLowerCase() == 'quit') {
                break;
            }
        }
        #end
        controller.shutdown();
    }
}