hint "Please stay away from the construction site.";

for [{_i=0}, {_i<4}, {_i=_i+1}] do
{
    fobtable say3D "buildingFOB";
    sleep 4.5;
};

hint composeText ["Aufbau abgeschlossen.", lineBreak, lineBreak, "Construction finished."];