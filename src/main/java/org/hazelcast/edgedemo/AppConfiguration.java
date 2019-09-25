package org.hazelcast.edgedemo;


import com.hazelcast.core.HazelcastInstance;
import com.hazelcast.jet.Jet;
import com.hazelcast.jet.JetInstance;

public final class AppConfiguration
{
    public static final String COORDINATES_MAP = "coords-map";
    public static final String VIOLATIONS_MAP = "violations-maps";
    public static final String AVERAGE_SPEED_MAP = "average-speed-map";
    public static final HazelcastInstance HAZELCAST_INSTANCE;
    public static final int SAMPLE_TICK_INTERVAL_MSEC = 5;
    public static final double POLICY_VIOLATION_THRESHOLD_MPH = 40.0;
    public static final JetInstance JET_INSTANCE;

    static {
        JET_INSTANCE = Jet.newJetInstance( );
        HAZELCAST_INSTANCE = JET_INSTANCE.getHazelcastInstance( );
    }
}
