# Hazelcast IoT Edge Demo: Edge Component

## Overview

The Edge Component of the Hazelcast IoT Edge Demo simulates a telemetry
downlink station for connected cars installed at "the edge" of an IoT
data pipeline. This could, for example, be a small server installed in
a cellular base station.

The Edge Component uses [Hazelcast Jet](https://jet.hazelcast.org/)
to stream data from the from the [US Department of Transportation's
Advanced Messaging Concept Probe (AMCP) data set](https://catalog.data.gov/dataset/advanced-messaging-concept-development-probe-vehicle-data)
to a non-local [Hazelcast IMDG](https://hazelcast.org/) data grid that
is assumed to be installed in a remote data center.
