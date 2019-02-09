#!/bin/bash
gcloud compute instances $1 controller-{0,1,2}
gcloud compute instances $1 worker-{0,1,2}
