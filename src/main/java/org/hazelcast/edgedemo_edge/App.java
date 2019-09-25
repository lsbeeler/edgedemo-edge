package org.hazelcast.edgedemo_edge;


public class App
{
    private static void usageError( )
    {
        System.err.println("error: usage: java org.hazelcast.edgedemo_edge " +
                "<datacenter_ip_addr>");
        System.err.println("\t<datacenter_ip_addr>:  the IP address or DNS " +
                "name of the remote data center Hazelcast IMDG instance");
        System.exit(127);
    }

    public static void main(String[ ] args)
    {
        if (args.length != 1)
            usageError( );

        JetLauncher.launch("src/main/resources/AMCP-Probe-Data.csv",
                args[0]);
    }
}
